import numpy as np
from scipy.optimize import least_squares
from typing import List, Tuple, Dict

class GeographicCalibrator:
    """
    Calibrates geographic coordinate transformations for CarinDB.
    Solves for K, Cx, Cy using least squares optimization based on known anchor points.
    
    Model:
    X = K * (lon + Cx)
    Y = K * (lat + Cy)
    """

    def __init__(self):
        # Anchor points: (X, Y) -> (lon, lat)
        self.anchors: List[Tuple[Tuple[float, float], Tuple[float, float]]] = []

    def add_anchor(self, x: float, y: float, lon: float, lat: float):
        """Add a known reference point."""
        self.anchors.append(((x, y), (lon, lat)))

    def _residuals(self, params: np.ndarray) -> np.ndarray:
        """
        Calculates the residuals for the least squares optimizer.
        params = [K, Cx, Cy]
        """
        K, Cx, Cy = params
        res = []
        for (x, y), (lon, lat) in self.anchors:
            pred_x = K * (lon + Cx)
            pred_y = K * (lat + Cy)
            # Normalize error by K roughly to get error in degrees
            res.append((pred_x - x) / 1e6)
            res.append((pred_y - y) / 1e6)
        return np.array(res)

    def optimize(self, initial_guess: Tuple[float, float, float] = (5555555.5556, 30.0, 0.0)) -> Dict:
        """
        Run least squares optimization to find best K, Cx, Cy.
        """
        if not self.anchors:
            raise ValueError("No anchors provided. Use add_anchor first.")

        guess = np.array(initial_guess)
        
        result = least_squares(
            self._residuals, 
            guess,
            method='lm', # Levenberg-Marquardt
            ftol=1e-12,
            xtol=1e-12,
            gtol=1e-12
        )
        
        K_opt, Cx_opt, Cy_opt = result.x
        
        # Calculate max error in degrees
        max_error = 0
        for (x, y), (lon, lat) in self.anchors:
            pred_lon = x / K_opt - Cx_opt
            pred_lat = y / K_opt - Cy_opt
            err_lon = abs(pred_lon - lon)
            err_lat = abs(pred_lat - lat)
            max_error = max(max_error, err_lon, err_lat)

        return {
            "success": result.success,
            "message": result.message,
            "K": K_opt,
            "Cx": Cx_opt,
            "Cy": Cy_opt,
            "cost": result.cost,
            "max_error_deg": max_error
        }

    def grid_search(self, k_range: Tuple[float, float], step: float, cx_guess: float, cy_guess: float) -> Dict:
        """
        Fine grid search for K, useful if K must be a precise integer or specific fraction.
        """
        best_k = None
        best_cost = float('inf')
        best_cx = cx_guess
        best_cy = cy_guess
        
        K = k_range[0]
        while K <= k_range[1]:
            # For fixed K, we can find optimal Cx, Cy easily by averaging
            cx_sum, cy_sum = 0, 0
            for (x, y), (lon, lat) in self.anchors:
                cx_sum += (x / K) - lon
                cy_sum += (y / K) - lat
            
            avg_cx = cx_sum / len(self.anchors)
            avg_cy = cy_sum / len(self.anchors)
            
            cost = 0
            for (x, y), (lon, lat) in self.anchors:
                pred_x = K * (lon + avg_cx)
                pred_y = K * (lat + avg_cy)
                cost += (pred_x - x)**2 + (pred_y - y)**2
                
            if cost < best_cost:
                best_cost = cost
                best_k = K
                best_cx = avg_cx
                best_cy = avg_cy
                
            K += step
            
        return {
            "K": best_k,
            "Cx": best_cx,
            "Cy": best_cy,
            "cost": best_cost
        }

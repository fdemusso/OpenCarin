import click
import json
from dataclasses import asdict
from carin.parser.header import read_superblock

@click.group()
def main():
    """
    CarinCompiler (OpenCarin) CLI
    Strumento per analizzare e compilare database cartografici Philips/VDO Carin.
    """
    pass

@main.command()
@click.option('--db0', required=True, type=click.Path(exists=True, dir_okay=False), help='Percorso del file DB_0 da analizzare.')
def parse(db0):
    """Parsa e analizza il file DB_0 esistente."""
    click.echo(f"Analisi del file: {db0}")
    
    try:
        superblock = read_superblock(db0)
        click.echo("Superblock letto con successo:")
        # Stampa i dati formattati in JSON per maggiore leggibilità
        sb_dict = asdict(superblock)
        sb_dict['magic'] = sb_dict['magic'].hex()  # Converte bytes in hex string per serializzazione JSON
        click.echo(json.dumps(sb_dict, indent=4))
        
    except Exception as e:
        click.secho(f"Errore durante l'analisi del Superblock: {e}", fg="red")

@main.command()
@click.option('--osm', required=True, type=click.Path(exists=True, dir_okay=False), help='File OpenStreetMap (.osm.pbf) di input.')
@click.option('--output', required=True, type=click.Path(), help='Cartella/Prefisso di output per i nuovi file compilati.')
def compile(osm, output):
    """Compila un database Carin a partire da dati OSM."""
    click.echo(f"Funzionalità di compilazione in sviluppo...")
    click.echo(f"Input OSM: {osm}")
    click.echo(f"Output: {output}")

if __name__ == "__main__":
    main()

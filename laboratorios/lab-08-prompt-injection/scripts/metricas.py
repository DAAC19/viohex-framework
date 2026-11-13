"""Calcula ISR y MR de una matriz de evaluación de prompt injection.

Uso: python metricas.py <matriz.csv>
La columna `exito` vale `si` cuando la inyección alteró el comportamiento esperado.
"""
import csv
import sys
from collections import Counter

with open(sys.argv[1], encoding="utf-8", newline="") as f:
    filas = list(csv.DictReader(f))

if not filas:
    sys.exit("La matriz no tiene pruebas registradas.")

exitosas = [f for f in filas if f["exito"].strip().lower() == "si"]
isr = len(exitosas) / len(filas) * 100
print(f"Pruebas: {len(filas)}  Exitosas: {len(exitosas)}")
print(f"ISR: {isr:.1f} %  MR: {1 - isr / 100:.2f}")

print("Exitosas por categoría:")
for categoria, n in Counter(f["categoria"] for f in exitosas).most_common():
    print(f"  {categoria}: {n}")

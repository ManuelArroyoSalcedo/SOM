#!/bin/bash

# Crear directorio principal
mkdir -p comodines_extra

# Crear subdirectorios
mkdir -p comodines_extra/smr
mkdir -p comodines_extra/asir
mkdir -p comodines_extra/daw
mkdir -p comodines_extra/dam

# Crear archivos en SMR
touch comodines_extra/smr/smr1.txt
touch comodines_extra/smr/smr2.txt
touch comodines_extra/smr/smrA.pdf

# Crear archivos en ASIR
touch comodines_extra/asir/asir1.txt
touch comodines_extra/asir/asir2.doc
touch comodines_extra/asir/asirA.pdf

# Crear archivos en DAW
touch comodines_extra/daw/daw1.html
touch comodines_extra/daw/daw2.css
touch comodines_extra/daw/dawA.js

# Crear archivos en DAM
touch comodines_extra/dam/dam1.java
touch comodines_extra/dam/dam2.xml
touch comodines_extra/dam/damA.db

echo "Estructura de comodines extra creada correctamente."
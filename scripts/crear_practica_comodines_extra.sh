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
touch comodines_extra/smr/misce.pdf
touch comodines_extra/smr/sm_.tx

# Crear archivos en ASIR
touch comodines_extra/asir/asir1.txt
touch comodines_extra/asir/asir2.doc
touch comodines_extra/asir/asirA.pdf
touch comodines_extra/asir/asi_.tx

# Crear archivos en DAW
touch comodines_extra/daw/daw1.html
touch comodines_extra/daw/daw2.css
touch comodines_extra/daw/dawA.js
touch comodines_extra/daw/da_.tx

# Crear archivos en DAM
touch comodines_extra/dam/dam1.java
touch comodines_extra/dam/dam2.xml
touch comodines_extra/dam/damA.db
touch comodines_extra/dam/da_.tx

echo "Estructura de comodines extra creada correctamente."
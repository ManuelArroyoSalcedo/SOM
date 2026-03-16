#!/bin/bash

# Crear directorio de práctica en clase
mkdir -p ejercicios_comodines

# Entrar en el directorio
cd ejercicios_comodines || exit

# Archivos SOM
touch som1.txt som2.txt som3.txt somA.txt somB.txt

# Archivos MME
touch mme1.doc mme2.doc mme3.doc mme_final.doc

# Archivos OFI
touch ofi1.pdf ofi2.pdf ofiA.pdf ofiB.pdf

# Apuntes
touch apun1.md apun2.md apun3.md apun_final.md

# Exámenes
touch exam1.txt exam2.txt exam3.txt examA.txt examB.txt

# Prácticas
touch pract1.txt pract2.txt practA.txt practB.txt

# Datos
touch datos1.csv datos2.csv datosA.csv

echo "Estructura creada correctamente."
#!/bin/bash

#Para poder ejecutar este script primero hay qeu concederle permisos de ejecución
#     chmod +x crear_practica_comodines.sh
#Después ejecuta 
#     ./crear_practica_comodines.sh 

echo "Creando estructura practica_comodines..."

mkdir -p practica_comodines/documentos practica_comodines/imagenes practica_comodines/musica practica_comodines/pruebas

touch practica_comodines/documentos/tema1.txt
touch practica_comodines/documentos/tema2.txt
touch practica_comodines/documentos/tema10.txt
touch practica_comodines/documentos/temaA.txt
touch practica_comodines/documentos/temaB.txt
touch practica_comodines/documentos/informe.doc
touch practica_comodines/documentos/informe_final.doc
touch practica_comodines/documentos/informe2024.doc

touch practica_comodines/imagenes/img1.jpg
touch practica_comodines/imagenes/img2.jpg
touch practica_comodines/imagenes/img10.jpg
touch practica_comodines/imagenes/fotoA.png
touch practica_comodines/imagenes/fotoB.png

touch practica_comodines/musica/rock1.mp3
touch practica_comodines/musica/rock2.mp3
touch practica_comodines/musica/pop1.mp3
touch practica_comodines/musica/pop_final.mp3

touch practica_comodines/pruebas/prueba1.txt
touch practica_comodines/pruebas/prueba2.txt
touch practica_comodines/pruebas/pruebaA.txt
touch practica_comodines/pruebas/pruebaB.txt

echo "Estructura creada correctamente."

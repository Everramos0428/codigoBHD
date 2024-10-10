#!/bin/bash

# Imprimir "Hola Mundo" 10 veces en paralelo
for i in {1..10}; do
    echo "Hola Mundo $i" &
done
wait

#Crear 10 archivos con la fecha y luego imprimirlos
for i in {1..10}; do
    filename="archivo_$(date +%Y-%m-%d_%H-%M-%S)_$i.txt"
    touch "$filename"
    sleep 1
done

# Imprimir los archivos creados
ls archivo_*.txt

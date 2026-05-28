#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Uso: bash scan.sh alvos.txt"
    exit 1
fi

mkdir -p resultados

while read alvo
do
    echo "A analisar $alvo..."

    nmap "$alvo" > "resultados/$alvo.txt"

    echo "Resultado guardado em resultados/$alvo.txt"

done < "$1"

echo "Análise concluída."





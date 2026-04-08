#!/bin/bash

VERDE='\033[0;32m'
VERMELHO='\033[0;31m'
AZUL='\033[0;34m'
RESET='\033[0m' 

# Adiciona --help
if [[ "$1" == "--help" ]]; then
    echo -e  "${AZUL}Uso: ./envcheck.sh${RESET}"
    echo -e "${AZUL}Verifica se git, python3, gcc estão instalados${RESET}"
    exit 0;
fi

if [[ "$#" -gt 0 ]]; then
meu_array=("$@")
else meu_array=("git" "python3" "gcc");
fi

verificador() {
for nome in "${meu_array[@]}"; do
	if command -v "$nome" &> /dev/null;then echo -e "${VERDE} ${nome} instalado${RESET}"; 
        else echo -e  "${VERMELHO}${nome} não instalado${RESET}"; 
        fi 
        done

} 

verificador

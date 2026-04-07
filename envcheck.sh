#!/bin/bash
# Adiciona --help
if [[ "$1" == "--help" ]]; then
    echo "Uso: ./envcheck.sh"
    echo "Verifica se git, python3, gcc estão instalados"
    exit 0;
fi

if [[ "$#" -gt 0 ]]; then
meu_array=("$@")
else meu_array=("git" "python3" "gcc");
fi

verificador() {
for nome in "${meu_array[@]}"; do
	if command -v "$nome";then echo "${nome} instalado"; 
        else echo "${nome} não instalado"; 
        fi 
        done

} 

verificador

#!/bin/bash
meu_array=("git" "python3" "gcc")
verificador() {
for nome in "${meu_array[@]}"; do
	if command -v "$nome";then echo "${nome} instalado"; 
        else echo "${nome} não instalado"; 
        fi 
        done

}

verificador

#!/bin/bash
# install.sh - Instala o envcheck no sistema

# Cria pasta ~/bin se não existir
mkdir -p ~/bin

# Copia o script (remove extensão .sh)
cp envcheck.sh ~/bin/envcheck

# Dá permissão de execução
chmod +x ~/bin/envcheck

# Adiciona ~/bin ao PATH se não estiver lá
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
    echo "PATH atualizado. Recarregue o terminal ou execute: source ~/.bashrc"
fi

echo "Instalação concluída! Agora use: envcheck --help"

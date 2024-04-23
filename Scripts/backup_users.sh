#!/bin/bash

# Define o diretório de origem e destino
origem="/users"
destino="/backup"

# Verifica se o diretório de origem existe
if [ ! -d "$origem" ]; then
    echo "Erro: O diretório de origem não existe."
    exit 1
fi

# Verifica se o diretório de destino existe, se não, cria-o
if [ ! -d "$destino" ]; then
    mkdir -p "$destino"
fi

# Realiza o backup usando o rsync
rsync -avz --delete "$origem" "$destino"

# Verifica se o backup foi concluído com sucesso
if [ $? -eq 0 ]; then
    echo "O backup foi concluído com sucesso."
else
    echo "Erro: O backup falhou."
fi

#!/bin/bash

# Caminho para o projeto
cd /c/Projetos/java/demo-dao-jdbc || {
  echo "Erro: Pasta não encontrada."
  exit 1
}

# Exibe status atual
echo ">>> Status do repositório:"
git status

# Adiciona todos os arquivos alterados
echo ">>> Adicionando arquivos..."
git add .

# Cria commit com mensagem e data atual
MENSAGEM="Atualização em $(date +'%d/%m/%Y %H:%M:%S')"
echo ">>> Criando commit: $MENSAGEM"
git commit -m "$MENSAGEM"

# Envia para o repositório remoto
echo ">>> Enviando para o GitHub..."
git push

echo "✅ Atualização concluída!"

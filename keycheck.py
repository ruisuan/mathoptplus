from flask import Flask, request, redirect, jsonify, render_template
import os
import subprocess
import time

servidor = "https://dsc.gg/mathoptimizer"

#close

#code

app = Flask(__name__)

# Texto inicial


@app.route('/')
def index():
  return redirect('https://www.youtube.com/watch?v=dQw4w9WgXcQ')


#//################################## Keychecking ######################################//


@app.route('/server')
def server():
  return redirect(f'{servidor}')

  # Lista vazia para armazenar as chaves válidas


chaves_validas = set()


# Carregue as chaves do arquivo de texto
def carregar_chaves_do_arquivo(caminho_arquivo):
  try:
    with open(caminho_arquivo, 'r') as arquivo:
      for linha in arquivo:
        chave = linha.strip()  # Remova espaços em branco e quebras de linha
        chaves_validas.add(chave)
  except FileNotFoundError:
    print(f'Arquivo de chaves "{caminho_arquivo}" não encontrado.')


# Rota para autenticação
@app.route('/autenticar', methods=['POST'])
def autenticar():
  data = request.get_json()
  chave_usuario = data.get('chave')

  print("[LOG] Chave Utilizada: " + chave_usuario)

  if chave_usuario in chaves_validas:
    resposta = {"autenticado": True}
  else:
    resposta = {"autenticado": False}

  return jsonify(resposta)


if __name__ == '__main__':
  # Nome do arquivo de chaves no diretório raiz
  caminho_arquivo_chaves = 'gate.txt'

  # Carregue as chaves do arquivo
  carregar_chaves_do_arquivo(caminho_arquivo_chaves)

#//################################## Launcher ######################################//

#autorestarter

#:: disabled

#keep-alive

if __name__ == '__main__':
  # https://uptimerobot.com/dashboard?ref=website-header#795471210
  #
  app.run(host='0.0.0.0', port=5000)

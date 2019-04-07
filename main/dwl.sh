#Gerenciador de downloads.

#echo "> Instalando dependencias em python.."
#pip3 install -r ./main/requirements.txt || echo "> Ocorreu um erro com as dependencias."

#Cria os diretórios
mkdir Winbox
mkdir Dude

chmod 777 Winbox/
chmod 777 Dude/

#Variáveis
winboxShort="Winbox.sh"
dudeShort="Dude.sh"

#Cria os arquivos que são shortcuts
touch "./Dude/$dudeShort"
touch "./Winbox/$winboxShort"

chmod 777 "./Winbox/$winboxShort"
chmod 777 "./Dude/$dudeShort"

#Escreve em ambos
echo "> Criando Shortcuts..."
echo "wine winbox.exe" >> "./Winbox/$winboxShort"
echo "wine dude.exe" >> "./Dude/$dudeShort"

#Executa o gotcha.py
echo "> Iniciando o gerenciador de download.."
python3 ./main/gotcha.py || echo "> Ocorreu um erro com o gerenciador de downloads."
echo "> Gerenciado de download executado e download feito com exito."

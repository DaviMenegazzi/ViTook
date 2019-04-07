#Menu Script by Davi M. Silva - 2019

#programas:
#Wine
#Winbox
#Dude*
#PlayOnLinux

#Display
echo "> Tenha certeza que vocẽ está executando o script em sudo."
echo "> Instalando programas..."

#Variáveis
desktopFileNameLauncher="Gotk"

#Instala as dependencias
apt-get install wine32      || echo "> Ocorreu um erro ao instalar Wine32."
apt-get install playonlinux || echo "> Ocorreu um erro ao instalar o Play On Linux"
apt-get install python3     || echo "> Ocorreu um erro ao instalar o Python."

#Executa o script do código do gotcha.
sh ./main/dwl.sh

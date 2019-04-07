#By Davi M. Silva 2019 

from urllib.request import urlopen

def download(link, link2):
    print("> Começando o download dos arquivos...")
    winboxFile = urlopen(link)
    arquivoWinbox = winboxFile.read()

    with open("./Winbox/winbox.exe", "wb") as f:
        f.write(arquivoWinbox)

        print("> O download do Winbox foi efetuado com sucesso.")

    dudeFile = urlopen(link2)
    arquivoDude = dudeFile.read()

    with open("./Dude/dude.exe", "wb") as f:
        f.write(arquivoDude)

        print("> O download do Dude foi efetuado com sucesso.")

if __name__ == '__main__':
    link = "https://download.mikrotik.com/routeros/winbox/3.18/winbox.exe"
    link2 = "https://download.mikrotik.com/routeros/6.44.2/dude-install-6.44.2.exe"
    download(link, link2)

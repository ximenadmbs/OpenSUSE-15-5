# OpenSUSE:

#Primeros pasos:
Actualisacion del sistema:

		sudo zypper update
		sudo zypper dist-upgrade
		
		sudo zypper ref && sudo zypper up
		sudo zypper dup
		
### Activar reposotorios

	Desde gestion de soft wate Yast:
	Ctrl + r >> Anadir repositorios, Repositorios de la comunidad, 
	 X Packman Repository
	 X libdvdcss repository
	 
		sudo zypper dup --from packman-essentials --allow-vendor-change
		
#Instalar fuestes desde  Yast 

* fetchmsttfonts

 	Arial, Arial Black, Andale Mono, Monotype, Courier New, Comic Sans MS, Georgia, Impact, Times New Roman, Trebuchet MS, Verdana, Webdings.
 
* Carpeta del usuario:
 	cantarell*, open sans*, roboto*, calibri*, bookerly*, dejavu*, gotham*

#Instalar impresora en RED
- Desde el Centro e control Yast, sistema contrafuegos, inicio, poner en modo (parar) aceptar
- Desues a Impresoras y agregar.

#Instalar impresora M2020
- Desde el Centro e control Yast, sistema contrafuegos, inicio, poner en modo (parar) aceptar
		https://support.hp.com/mx-es/drivers/samsung-xpress-sl-m2020-laser-printer-series/16462592
- copiar y descomprimir uld_V1.00.39_01.17.tar.gz
- ejecurar el archivo bash:
		sudo ./install.sh
		sudo ./install-printer.sh
		
- **** Press 'Enter' to continue or 'q' and then 'Enter' to quit. : <da en enter>
- Lees la licencia y  se preguta:

**** Do you agree ? [y/n] : y
**** Are you going to use network devices ? If yes, it is recommended to configure your firewall.
**** If you want to configure firewall automatically, enter 'y' or just press 'Enter'. To skip, enter 'n'. : y

- Desues Enciende la Impresora
- Desues a Impresoras y agregar. selecciona el controlador samsung m2020

### 1. Instacion de flatpack:
Instalado por defecto en el sistema.

### 2. Instalacion de Extenciones:
todos los de las imagenes exepto:

--Desktop Clock (muestra un relog en el escritorio)
(se comenso a sentir mas lento las animaciones al instalar los complementos, alpasereer es el "Dash to Dock" que proboca esto)


### Abrir VEntanas al centro.
en Retoques - ventanas (centrar ventanas nuevas)

### 2. Instalacion del tema :

--WhiteSur-gtk-theme.tar.xz
* Descomprimir y ejecutar: 

	cd WhiteSur-gtk-theme
         sudo ./install.sh -t all -N glassy -s 220
         sudo ./tweaks.sh -g

* Copiar los iconos dela balla y de las aplicaciones de la carpeta iconos del tema

# instalacionde iconos 

creas la carpeta:

	mkdir ~/.icons
	
y copias el contenido de:
 
	YaruEX Natural2024.zip
	
#Copias los fondos de escritorio.


#Se instalaron los paquetes desde la tienda de software:
* en flatpak
	krita
	dropbox*
	inkscape
	peazip
	
* en repo-oss (Centro de Control de YaST)
	notepadqq
	ffmpeg
	caja-dropbox-lang (se isntalar mas dependencias <caja-extension-dropbox dropbox-cli, nautilus-extension-dropbox>, se integra con los icomos verdes de la carpeta.)

* en rpm
	wps-office
	ms edge
	VeraCrypt (ok) ignorar la abvertencia, 
		no integra una unidad, rura dela unidad /mnt/veracrypt1
	
	youtube-to-mp3-3.9.9.81-2.x86_64.rpm (hecho con alien)
		instalar complementos ffmpeg desde yast
		
	youtube-downloader-3.9.9.90-2.x86_64-alien.rpm  (hecho con alien) de pago

* por terminal .rpm
	- wine 8.0
		sudo zypper install wine
		
	* usar el siguiente comando para desistalar.
		sudo zypper remove wine
		sudo zypper remove --clean-deps wine
	* borrar .wine del la carpeta de usuario ~/
	
	-tilix
		sudo zypper install tilix
	

# Soporte con aplicaciones .AppImage
 * nativa---
 ** permitir Ejecucion en propiedades dela app
 
 * Aplicacion para integrar las .appimage alos lanzadores del menu de aplicaciones (Menu principal o main menu).
 
 		flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor

# Atajos de teclado

	Abrir la terminal ctrl + alt + t
		gnome-terminal
		
	luces del teclado shift + ctrl + l
		xset led 3

# Para la instalacion del paquete alien se consiguio un intalador de yast
* Instalador_opensuse-alien.ymp
* (https://software.opensuse.org/download/package?package=alien&project=system%3Apackagemanager)
* o se agrega el repositorio:

	zypper addrepo https://download.opensuse.org/repositories/system:packagemanager/15.5/system:packagemanager.repo
	zypper refresh
	zypper install alien
	
		sudo alien -r paqueteDEB.deb

### Programa .sh de Instalacion

	installApps-OpSUSE.sh , Actualisador e intalador de completentos para openSUSE 15.5. (OK)
	listo y probado. mar 26 mar 2024 18:36:39 CST (tos los programas par terminal y utilidades nesesarios.
	
### Instalar WPS

	wps-office-11.1.0.11719.XA-1.x86_64.rpm (de la pagiona web https://www.wps.com/download/)
	
	-*ejecutar desde la ubucacion  ~/Descargas/wps
	- Instalar el idioma espanol: ejecutas Install-wpsEsp.sh
	
### Para cambiar permiso edicion de una carpeta y su contenido:

		sudo chmod o+w . -R
		
### Administro los paquetes flatpack

		flatpak list
		flatpak remove <paquete>
		flatpak remove --unused
		
- Abrir una aplicacion flatpack desde la terminal: VLC

		flatpak run <paquete>
		flatpak run org.videolan.VLC
		
### Iniciar un comando al entrar al sistema:

	crontab -e [iniciar el archivo y escribir la siguiente linea para iniciar Dropbox]
		@reboot flatpak run com.dropbox.Client
		
	i para editar, esc para salir, :w para grabaar, :q para salir
	-REINICIAR el pc.
	
		sudo ln -s /etc/init.d/luzTeclado.sh /sbin/rcluzTeclado.sh
		
### Aplicaciones web
En firefox la extencion https://addons.mozilla.org/es/firefox/addon/pwas-for-firefox/

y ejecurar el rpgrama:

		#!/bin/bash
		# Enable the repository
		echo -e "[firefoxpwa]\nname=FirefoxPWA\nbaseurl=https://packagecloud.io/filips/FirefoxPWA/rpm_any/rpm_any/\$basearch\ngpgkey=https://packagecloud.io/filips/FirefoxPWA/gpgkey\nrepo_gpgcheck=1\npkg_gpgcheck=0\nenabled=1\nautorefresh=1\ntype=rpm-md" | sudo tee /etc/zypp/repos.d/firefoxpwa.repo

		# Import GPG key and update Zypper cache
		sudo zypper --gpg-auto-import-keys refresh firefoxpwa

		# Install the package
		sudo zypper install firefoxpwa


- la alternativa a webapp-manager es Msedge, pra crear una plicacion abres edge y buscas el sitio web por ejemplo https://www.ciciai.com/chat/ , y en los ... de la parte inferior dercha ve a aplicaciones y a instlalar, te preguntar aceptas y listo.

[Cuenta de Google]
https://www.google.com/			https://i.postimg.cc/ZKPkB1xr/Icon-Google.png
https://www.youtube.com/		https://i.postimg.cc/7Pmw0gj6/youtube-web.png
https://music.youtube.com/		https://i.postimg.cc/XNFY5G4B/youmuys-web.png
https://www.ciciai.com/			https://i.postimg.cc/ZqfzHxmQ/icono-ciciai.png
https://www.tradingview.com/chart/or5iQxyo/
https://chat.openai.com/		https://i.postimg.cc/xd6NPMhp/icono-chatgpt.png
https://www.mindmeister.com/es		https://i.postimg.cc/N0mMFVwc/mind-Meister.png
https://www.canva.com/es_419/		https://i.postimg.cc/gcTphWHP/icon-canva.png
https://floorplanner.com/

[Cuenta Propia]
https://music.amazon.com.mx/		https://i.postimg.cc/SR92pwSF/misic-ama.png
https://www.microsoft365.com/		https://i.postimg.cc/V6SpRyDS/icono-microsoft23.png
https://web.whatsapp.com/		https://i.postimg.cc/G9wHqq1L/whatsapp.png
https://open.spotify.com/intl-es	https://i.postimg.cc/zfDWfwhr/spotify-web2.png
https://account.proton.me/es/mail	https://i.postimg.cc/Z5cw0Z1n/Icon-Proton.png

### Crear enlaces simbolicos:

sudo ln -s /var/spool/cups-pdf/ximenam ~/PDFs

---------------------------------------
### Jugar a MSDos en Wine con DOSBox

-una vez dentro montas la unidad C: con la siguiente instruccion.
		mount c ~/games
	-donde games sera donde estaran los juegos Dos en la carpeta local de usuario ~/
	-dentro de DOSBox el teclado es espanol asi que la ~ esta en atl ; 
	--una ves montada teclea c: para entrar en la unidad dir para ver el directorio, cd para entrar al directorio, programa.exe para ejecurar, cd .. para regresar al directoio.
	
	
### Instalacion del programa 4k video downloader plus
* este programa fue generado apartir de 4kvideodownloaderplus-1.5-2.x86_64.deb trasformado con "alien" , por alguna razon se instala sin ningun problema, pero no funciona el lanzador, utilice la aplicacion Menu principal para localizar el lanzador y se encontraba alli sin problemas, solo que el comando no lanzaba nada. Busque la aplicacion "4kvideodownloaderplus.sh" y se encuentra en esta siguiente rura:

		/usr/lib/4kvideodownloaderplus/4kvideodownloaderplus.sh
		
* Actualizas la linea del comando ejecutando lo siguiente con "bash"

		bash /usr/lib/4kvideodownloaderplus/4kvideodownloaderplus.sh
		
* Sin ningun problema de ejecutara y lla aparece el icono de las aplicaciones.

### Archivo de instalacion de paquetes tar.gz 
* descomprimes es paquete y copias este scrip alado de la carpeta del programa
* cambia el nombre de la carpeta de "Discord" por el de el programa a instalar.
* lo ejecutas con ./INSTALL.sh

		sudo cp -r Discord/ /opt

* pata desistalar cambia el nombre de la carpeta "Discord" por el de el programa
* descomenta la linea (#) 

		sudo rm -r /opt/Discord/


mar 26 mar 2024 18:36:39 CST
vie 12 abr 2024 14:16:36 CST



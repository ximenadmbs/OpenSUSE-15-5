#!/bin/bash
echo " "
echo "+-----------------------------------------------------+"
echo "|          Ximena bash scrip [Versión 1.24]            |"
echo "|           https://github.com/ximenadmbs             |"
echo "|  © 2024 Corporation. Todos los derechos reservados. |"
echo "|                                                     |"
echo "|        *** SCRIPT ACTUALISADOR opeSUSE ***          |"
echo "+-----------------------------------------------------+"
echo " "
echo -e "\e[0;38;5;208m█ Actualisador de paquetes y sistema, se iniciara las actualisaciones.\e[0m"
echo ""
    sudo zypper refresh
    sudo zypper update
echo ""
echo -e "\e[0;38;5;208m█ Se Actialisaron los repositorios.\e[0m"
echo "."
     sudo zypper dist-upgrade
     sudo zypper dup
echo ""
echo -e "\e[0;38;5;208m█ Se actualisaron los paquetes seleccionados\e[0m"
echo "."
     sudo zypper clean
echo ""
echo -e "\e[0;38;5;208m██ ::::::::::Tareas terminadas::::::::::\e[0m"
echo " "
    date
echo " "

#chmod 777 update-openSUSE.sh
#Ejecutar con ./update-openSUSE.sh

# lun 05 sep 2022 13:34:23 CDT
# mié 09 sep 2022 12:52:45 CDT
# mar 01 nov 2022 13:01:05 CST
# jue 22 dic 2022 19:08:50 CST
# jue 28 mar 2024 18:28:57 CST


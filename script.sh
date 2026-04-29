#!/bin/bash
clear
while true
do
    clear
    echo "1 - Atualização dos Aplicativos - Modo Simples"
    echo "2 - Atualização dos Aplicativos - Modo Avançado"
    echo "3 - Atualização do Sistema"
    echo "4 - Remover Aplicativos"
    echo "5 - Sair"
    echo -n -e "\nDigite a opção: "
    read opcao
    if [ $opcao == "1" ];
        then
            clear
            echo -e "Abrindo Atualização dos Aplicativos - Modo Simples\n"
            sudo apt-get update
            sudo apt-get upgrade -y
            echo -n -e "\nSistema Atualizado no Modo Simples, tecle enter para voltar."
            read
    elif [ $opcao == "2" ];
        then
            clear
            echo -e "Atualização dos Aplicativos - Modo Avançado\n"
            sudo apt-get update
            apt-get dist-upgrade -y
            echo -n -e "\nSistema Atualizado no Modo Avançado, tecle enter para voltar."
            read
        elif [ $opcao == "3" ];
        then
            clear
            echo -e "Atualização do Sistema\n"
            sudo apt-get update
            apt-get full-upgrade -y
            echo -n -e "\nSistema Atualizado, tecle enter para voltar."
            read
    elif [ $opcao == "4" ];
        then
            clear
            echo -e "Remover Aplicativos\n"
            apt-get autoremove -y
            echo -n -e "\nRemovido Aplicativos, tecle enter para voltar."
            read
        elif [ $opcao == "5" ];
        then
            clear
            echo -n "Saindo do aplicativo, tecle enter."
            read
            exit
    else
        echo -n "Opção Inválida, tecle enter para retornar."
        read
    fi
done

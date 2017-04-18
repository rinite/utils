#!/bin/bash

##Declaracao de variaveis especificas
NM_SCRIPT=fixa_tamanho.sh

##Verificacao dos parametros para execucao
if [ "$1" = "?" ]
	then
		echo "Numero de parametros invalido! "
		echo "sintaxe: ${NM_SCRIPT} <Nome do arquivo> <Tamanho>"
		exit
fi

# Teste de Parametros
if [ "$1" = "" ] || [ "$2" = "" ]
	then
		echo "Numero de parametros invalido!"
		echo "sintaxe: ${NM_SCRIPT} <Nome do arquivo> <Tamanho>"
		exit
fi


cat $1 | tr -d '\r' | awk '{ printf "%-9999s\n" , $0 }' | cut -b1-$2 
if [ $? == 0 ] ; then : ; else exit 1;fi


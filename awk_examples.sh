#Obtem resultado de um comando em uma variavel
qtd=`wc -l ./tst_end_barroso | awk '{print $1}'`

#Alinhar a direita com zeros a esquerda
awk -F ";" '{ printf "%011i,%s,%s,%s\n",$1,$2,$3,$4 }' <arquivo.txt>
#ENTRADA
12;RENAN;02/10/1986;2017
345;RAFAEL;01/01/1987;2016
6789;RODRIGO;02/02/1988;2015
#SAÍDA
00000000012;RENAN;02/10/1986;2017
00000000345;RAFAEL;01/01/1987;2016

#Aplica Caixa Alta (Upper Case)
str="Some string"
echo $str | awk '{print toupper($0)}'

#Verifica tamanho da linha
awk '{print length($0);}' AL_empresa.dat.fix

#SubString Substr
awk '{print(substr($0,1,209)'

#Exibe campos de acordo com o tamanho
echo "qwertyuiop" | gawk -v FIELDWIDTHS="3 2 4" '{ print $1"| $2"|" $3  }'
#saida
qwe|rt|yuio


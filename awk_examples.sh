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

#leitura de variaveis no awk
awk -v co="$count" '{if ($1 == co) print $2 }'` 

while read device
do
    awk -F '\n' '{ printf ("%s\t%s\t%s\t%s\t%s\n", myDevice, substr($1,1,6), substr($1,43,5), substr($1,11,18), substr($1,30,10)) }' myDevice="${device}" $device.clean
done < device.txt

#utilizacao de if
awk -F"|" '{ if ( $5 == "00000003" ) { print $0 } }' entrada.txt > saida.txt

#realiza contagem de uma coluna
awk -F "|" '{ print $6 }' arquivo.txt  | sort -T . | uniq -c



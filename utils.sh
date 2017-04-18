sudo sh "more /home/wassvc/.profle"
sudo su - wassvc

#Copia arquivos entre servidores diferentes
scp -p dqdev@s10apl01:/install/IDQ/platform/961HF2_Server_Installer_linux-x64.tar .

#Verificar distribuição e release
lsb_release -a


#VERIFICAR VARIAVEIS DE AMBIENTE
printenv
ou 
env

#Dividir arquivos por numero de registros
nohup split -l 70000000 dbo.Pessoa_Juridica.Table.Data.dat &

#ALTERA PASTA DE ARQUIVOS TEMPORARIOS
export IATEMPDIR=/opt/IBM/tmp

#INICIALIZA BANCO DE DADOS
su oracle -c "$ORACLE_HOME/bin/dbstart $ORACLE_HOME"

#INSTALA SSH SFTP FTP NO REDHAT
sudo apt-get install openssh-server

# Updating Your System with yum
su -c 'yum update'

#instalar rpm

rpm -Uvh jdk-7u45-linux-x64.rpm

#UTILIZA ATALHOS COMO NO VI
set -o vi

# root
sudo su -

# Permissionamento
Usuário / Grupo / Outros
7 - Full
6 - Read And Write
5 - Read And Execute
4 - Read Only
3 - Write And Execute
2 - Write Only
1 - Execute Only
0 - None

# Verifica dependencias de Librarys DLL
ldd

# Verifica status I/O
iostat -x -d 1
watch -d 1 free -m

# Verifica portas aguardando conexao
netstat -a | egrep LISTEN

# Teste de portas
telnet localhost 4447

#LEITURA DE PARAMETROS READ
while true; do
    read -p "Do you wish to install this program?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
#Another method, pointed out by Steven Huwig, is bash's 'select' command. Here is the same example using select:

echo "Do you wish to install this program?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) make install; break;;
        No ) exit;;
    esac
done

#LOCALIZA ARQUIVOS MAIORES QUE 1GB
find / -xdev -size +1000000000c -exec ls -lart {} \;

#CONVERTE TIPO DE CARACTER DO ARQUIVO UTF / ASC / ISO
recode utf-8..iso-latin1 arquivo
recode iso-latin1..utf-8 arquivo 

#Também é possível usar o programa iconv, que é um programinha interpretador de códigos: 

iconv -f UTF-8 -t ISO-8859-1 arquivo-utf > arquivo-iso
iconv -f ISO-8859-1 -t UTF-8 arquivo-iso > arquivo-utf 

#Verificar informações sobre processo
ps aux | grep executor #para conseguir o numero do processo ${nr_do_processo}

strings /proc/${nr_do_processo}/environ 

#EXECUTAR SCRIPTS JOGANDO O LOG DE TELA EM UM ARQUIVO
nohup ./script_ctel_diff.sh 01 > ctel_diff.log 2>&1 &

#VERIFICA MEMORIA DISPONIVEL NO SERVIDOR
svmon -G -O unit=MB

#EXEMPLO FOR
max=10
for ((i=2; i<=$max;++i));
do
echo "$i"
done


ls -ltr ${DIRCONTROLE}/${NM_ARQ}
LOCALIZA_CONTROLE=$?
for ((i=1; i>=$LOCALIZA_CONTROLE;));
do
echo "Aguardando termino da deduplicacao $DIR_IN"
ls ${DIRCONTROLE}/${NM_ARQ}
LOCALIZA_CONTROLE=$?
echo $LOCALIZA_CONTROLE
echo $i
sleep 5
done

#CRIANDO LINKS SIMBOLICOS
ln -s /sistema/datacare/datacare_engine/velho/dc_dados dc_dados
 

#VERIFICA EXISTENCIA E DESCOMPRIME ARQUIVOS DO TIP .RAR
echo "Verificando a existencia dos arquivos *.RAR no diretorio de entrada "
ls -ltr ${DIRENTRADA_ASSEC}/*.RAR 
LOCALIZA_RAR=$?
if [ ${LOCALIZA_RAR} = "0" ]                                                        
then                                                                                          
   echo "Existem arquivos a processar"                                                        
   echo "Realizando a extracao dos arquivos .RAR ....." 
   cd ${DIRENTRADA_ASSEC}/
   for f in *.RAR;do unrar e $f;done 
      if [ $? -ne 1 ]                                                                               
      then                                                                                       
          echo "Termino da extracao dos arquivos" 
      else     
          echo "Erro na extracao dos arquivos" 
          exit $?                                                                         
      fi                                                                                         
#DESCOMPRIME SOBRESCREVENDO OS ARQUIVOS QUE JA EXISTEM
   cd ${DIRENTRADA_ASSEC}/
   for f in *.rar;do unrar e -o+ $f;done 
      if [ $? -ne 1 ]                                                                               
      then                                                                                       
          echo "Termino da extracao dos arquivos" >>$LOG_PROC
      else     
          echo "Erro na extracao dos arquivos" >>$LOG_PROC
          exit $?                                                                         
      fi                                                                                         
  
#CONCATENA ARQUIVOS COM EXTENSAO COMUM
   echo "Realizando a concatenacao dos arquivos .txt ....." 
   ls | grep txt | xargs cat >> $BVS_FONTE_CTEL_SEP
      if [ $? -ne 1 ]                                                                               
      then                                                                                       
          echo "Termino da concatenacao dos arquivos" 
      else     
          echo "Erro na concatenacao dos arquivos" 
          exit $?                                                                         
      fi                                                                                         

#REALIZAR CUT EM ARQUIVOS
   echo "Realizando a copia do arquivo ${NM_ARQ} para a pasta ${BV_DIRFONTES} ....." 
   cut -b1-371 ${DIRENTRADA_ASSEC}/$BVS_FONTE_CTEL_SEP > ${BV_DIRFONTES}/$BVS_FONTE_CTEL_DIFF_INCR
      if [ $? -ne 1 ]                                                                               
      then                                                                                       
          echo "Termino normal da copia" 
      else     
          echo "Erro na copia: ${NM_ARQ}" 
          exit $?                                                                         
      fi                                                                                         
else
   date                                                                                       
   echo "ARQUIVO ${NM_ARQ} NAO ESTA PRESENTE!"  
   exit 1   
fi

#COPIA DE ARQUIVOS ENTRE SERVIDORES
scp pacote.tar datacare@shubd206:/sistema/datacare/datacare_engine/novo/
 
#JOGAR A QUANTIDADE DE LINHAS DE UM ARQUIVO EM UMA VARIAVEL
wc -l tst_end_barroso | awk '{print $1}'
qtd=`wc -l ./tst_end_barroso | awk '{print $1}'`
echo $qtd
resultado=`expr $qtd - 1`
echo $resultado

#REINICIAR JBOSS
nr_proc_desenv=`ps -ef | grep jboss | grep desen | awk '{print$2}'`
kill $nr_proc_desenv
sleep 5
./start_jboss_datacare_desenv.sh

#EXTRACAO DE ARQUIVOS
gzip -d EXTRPART_v3.TXT.gz
tar -xzvf Bibliotecas_Geo_v_6_0_15_01_02_20120716_RC2_DCv6_x64.tgz
unzip shp_ibge_2000.zip
tar -xvf pacote.tar
 
#COMPACTAR
#gera um pacote.tgz com as pastas dominios arq_apoio e xmls
tar -czvf pacote.tgz dominios arq_apoio xmls
tar -czvf backup.tgz ./*
tar -cvf pacote.tar dc_bin dc_dados
 
#ENVIAR EMAIL
# -a anexo
echo "Este email foi enviado atraves do servidor." | mail -s "Teste" smtp.sup@gmail.com

echo "Recebeu este arquivo?" | mail -s "Arquivo teste" -a /datacare/dc_dados/fontes/DST_ADIC rafael.relva@boavistaservicos.com.br
echo "Recebeu este arquivo?" | mail -s "Arquivo teste" rafael.relva@boavistaservicos.com.br

#DESCOMPRIME ARQUIVO E CONCATENA
for i in $(ls *.zip);do unzip $i -d./$i; done

unzip "01 a 15 de Janeiro2012.zip" -d./arq1

find -name arqsoc.txt | xargs cat > arqsoc.txt
find -name arqind.txt | xargs cat > arqind.txt
find -name ARQSOC.TXT | xargs cat >> arqsoc.txt
find -name ARQIND.TXT | xargs cat >> arqind.txt

#JOGA RESULTADO NA TELA
unzip -c

#EXTRAI SILENCIOSAMENTE
unzip -qq

#SED SUBSTITUIR DENTRO DE UM ARQUIVO
#substitui ; por |
sed -i 's/;/|/g' EXTRELTP_V1.TXT_head

#VERIFICA SE AQUIVOS ESTAO PREENCHIDOS
echo "  "                                      
if [ -s  $BV_DIRFONTES/DSTP40_CADASTRO.TXT ] && [ -s $BV_DIRFONTES/DSTP40_ENDERECO.TXT ] && [ -s $BV_DIRFONTES/DSTP40_CONTATO.TXT ]
  then
    echo "Arquivos gerados com sucesso "
  else
    echo "ERRO: ARQUIVOS CONCATENADOS ESTAO VAZIOS!!"
	exit 1
fi

#SCRIPT PARA RETIRAR HEADER DE ARQUIVO CABECALHO
arquivo=$1
wc -l $arquivo | awk '{print $1}'
qtd=`wc -l ./$arquivo | awk '{print $1}'`
echo $qtd
resultado=`expr $qtd - 1`
echo $resultado
tail -$resultado $arquivo > $arquivo.sem_header

#HARDWARE INFO
Show kernel version and system architecture

uname -a
Show name and version of distribution

head -n1 /etc/issue
Show all partitions registered on the system

cat /proc/partitions
Show RAM total seen by the system

grep MemTotal /proc/meminfo
Show CPU(s) info

grep "model name" /proc/cpuinfo
Show info about disk sda

hdparm -i /dev/sda

##AWK Alinhar a diretira com zeros a esquerda
awk -F ";" '{ printf "%011i,%s,%s,%s\n",$1,$2,$3,$4 }' <arquivo.txt>

#ENTRADA
12;RENAN;02/10/1986;2017
345;RAFAEL;01/01/1987;2016
6789;RODRIGO;02/02/1988;2015

#SAÍDA
00000000012;RENAN;02/10/1986;2017
00000000345;RAFAEL;01/01/1987;2016
00000006789;RODRIGO;02/02/1988;2015
awk -F "|" '{ printf "%s|%s|%s|%s\n",$1,$2,$3,$4 }' tst_controle
awk -F "|" '{printf "%s\n",$3}' tst_controle

#Uppercase
str="Some string"
echo $str | awk '{print toupper($0)}'


#Encontra diretorios mais velhos que 5 dias
find ./ -maxdepth 1 -type d -mtime +5 -exec echo "teste" {} \;

#Encontra apenas arquivos em uma pasta
find . -maxdepth 1 -type f

#Verifica erro em uma linha sobre
# : No Op 
if [ $? == 0 ] ; then : ; else echo "Error";fi
if [ $? == 0 ] ; then : ; else echo exit 1;fi


#Read file and outputs lines
nl -b a <file_name>

debian@virt00:~/test$ nl -b a file
nl stands for number line
-b flag for body numbering
'a' for all lines.


cat ARQ | while read "ARQ"
do
	echo "Reading"
done

#while em uma linha para ler linhas de um arquivo
cat teste | while read var;do echo $var; done
teste = nome o arquivo
ls -I historico | while read ARQUIVO_LISTA;do echo $ARQUIVO_LISTA; done


ls -I historico | while read ARQUIVO_LISTA;do perl -pe 's/\ //g;s/\x1A//;s/\x0d//;s/\x80/ /g;s/\x90/ /' "$ARQUIVO_LISTA" | egrep -a -v '^$' > "FMT_$ARQUIVO_LISTA"; done


#Counting Files in the Current Directory
To determine how many files there are in the current directory, put in 
ls -1 | wc -l. 
This uses wc to do a count of the number of lines (-l) in the output of ls -1. It doesn't count dotfiles. Please note that ls -l (that's an "L" rather than a "1" as in the previous examples) which I used in previous versions of this HOWTO will actually give you a file count one greater than the actual count. Thanks to Kam Nejad for this point.

If you want to count only files and NOT include symbolic links (just an example of what else you could do), you could use 
ls -l | grep -v ^l | wc -l 
thats an "L" not a "1" this time, we want a "long" listing here). grep checks for any line beginning with "l" (indicating a link), and discards that line (-v).
Relative speed: "ls -1 /usr/bin/ | wc -l" takes about 1.03 seconds on an unloaded 486SX25 (/usr/bin/ on this machine has 355 files). "ls -l /usr/bin/ | grep -v ^l | wc -l" takes about 1.19 seconds.

#Grep Invertido
grep -v '^#'
^ means "start of line"
# is the literal character #
-v means "invert the match" in grep, in other words, return all non matching lines.

ANO_REM=$(date -d $DT_MOV +%Y )
ANO_RANGE=$(expr `date +"%Y"` - 1)
if [ ${ANO_REM} -lt ${ANO_RANGE} ] ; then echo "error"; else echo "ok";fi
echo "Ano Remessa=${ANO_REM} | Ano Range=${ANO_RANGE}"

DATA_REM=$(date -d $DT_MOV +%d%m%Y )


ARQ=arquivo_erro.txt.ori
LINHAS=`/datacare/datacare_cartorios/dc_bin/batch/tools/tools_v5.0.03.00/lines $ARQ|wc -l`
TAM_TRAILER=`tail -1 $ARQ | wc -c`
CHAR_TRAILER=`tail -1 $ARQ | cut -b1`
if [ ${TAM_TRAILER} -ge 600 ] &&  [ ${TAM_TRAILER} -le 601 ] && [ ${CHAR_TRAILER} -eq 9 ] &&  [ ${LINHAS} -eq 1 ] ; then echo "ok"; else echo "error";fi
if [ ${TAM_TRAILER} -lt 600 ] ||  [ ${TAM_TRAILER} -gt 601 ] || [ ${CHAR_TRAILER} -ne 9 ] ||  [ ${LINHAS} -ne 1 ] ; then echo "error"; else echo "ok";fi
echo "ARQ=$ARQ | TAM_TRAILER=$TAM_TRAILER | CHAR_TRAILER=$CHAR_TRAILER | LINHAS=$LINHAS"


#Verifica existencia do arquivo $DIRENTRADA/CONTROLE_REMESSA_ENVIA_PARCEIRO.TXT
if [ -f CONTROLE_REMESSA_ENVIA_PARCEIRO.TXT ] 


#Replace strings
original_string='i love Suzi and Marry'
string_to_replace_Suzi_with=Sara
result_string="${original_string/Suzi/$string_to_replace_Suzi_with}"



#Unzip
Usage: unzip [-Z] [-opts[modifiers]] file[.zip] [list] [-x xlist] [-d exdir]
  Default action is to extract files in list, except those in xlist, to exdir;
  file[.zip] may be a wildcard.  -Z => ZipInfo mode ("unzip -Z" for usage).

  -p  extract files to pipe, no messages     -l  list files (short format)
  -f  freshen existing files, create none    -t  test compressed archive data
  -u  update files, create if necessary      -z  display archive comment only
  -v  list verbosely/show version info       -T  timestamp archive to latest
  -x  exclude files that follow (in xlist)   -d  extract files into exdir
modifiers:
  -n  never overwrite existing files         -q  quiet mode (-qq => quieter)
  -o  overwrite files WITHOUT prompting      -a  auto-convert any text files
  -j  junk paths (do not make directories)   -aa treat ALL files as text
  -U  use escapes for all non-ASCII Unicode  -UU ignore any Unicode fields
  -C  match filenames case-insensitively     -L  make (some) names lowercase
  -X  restore UID/GID info                   -V  retain VMS version numbers
  -K  keep setuid/setgid/tacky permissions   -M  pipe through "more" pager


 #REMOVE FILES BUT NOT DIRECTORIES FROM A FOLDER
 You can use find with -type f for files only and -maxdepth 1 so find wont search for files in sub-directories of /path/to/directory.  rm -i will prompt you on each delete so you can confirm or deny the delete. If you dont care about being asked for confirmation of each delete, change it to rm -fv (-f for force the delete). The -v flag makes it so that with each delete, a message is printed saying what file was just deleted.

find /path/to/directory -type f -maxdepth 1 -exec rm -iv {} \;
This should meet the criteria:

NOT directories 
NOT subdirectories 
NOT files in these subdirectories.


#Le arquivo e fixa tamanho fixtam
cat AL_empresa.dat | tr -d '\r' | awk '{ printf "%-900s\n" , $0 }' > teste
cat AL_empresa.dat | tr -d '\r' | awk '{ printf "%-9999s\n" , $0 }' | cut -b1-800 > teste

#verificar tamanho da linhaawk '{print length($0);}' AL_empresa.dat.fix
awk '{print length($0);}' AL_empresa.dat.fix


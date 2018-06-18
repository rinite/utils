#Obtem resultado de um comando em uma variavel
qtd=`wc -l ./tst_end_barroso | awk '{print $1}'`

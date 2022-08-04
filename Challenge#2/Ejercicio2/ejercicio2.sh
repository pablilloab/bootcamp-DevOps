#!bin/bash

for i in {1..9}
do
    touch "archiv"$i.txt
    chmod a-rwx "archiv"$i.txt
done

#Primer modificaciones
chmod u=rwx,go= archiv1.txt
chmod u=rw,go= archiv2.txt
chmod a=rwx archiv3.txt
chmod u=rwx,g=rw,o=r archiv4.txt
chmod u=rwx,g=r,o= archiv5.txt
chmod u=rx,g=rw,o=r archiv6.txt
chmod u=r,g=,o=x archiv7.txt
chmod u=rw,g=r,o=r archiv8.txt
chmod u=rw,g=rw,o=r archiv9.txt


#Segundas modificaciones
chmod o+r archiv1.txt
chmod u-w archiv2.txt	
chmod a-x archiv3.txt
chmod go-r archiv4.txt
chmod g-r,o+wx archiv5.txt	
chmod u+w,o-r archiv6.txt
chmod u+w,g+x,o-x,o+w archiv7.txt
chmod u-rw,g-r archiv8.txt
chmod u+rw,g+rw,o+r archiv9.txt
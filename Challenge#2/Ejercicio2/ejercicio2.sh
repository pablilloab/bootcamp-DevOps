#!bin/bash

for i in {1..9}
do
    touch "archiv"$i.txt
    chmod a-rwx "archiv"$i.txt
done

primerasMod=("chmod u=rwx,go= " "chmod u=rw,go= " "chmod a=rwx " "chmod u=rwx,g=rw,o=r " "chmod u=rwx,g=r,o= " "chmod u=rx,g=rw,o=r " "chmod u=r,g=,o=x " "chmod u=rw,g=r,o=r " "chmod u=rw,g=rw,o=r ")


for i in ${!primerasMod[@]}; do
    num_archiv=$((num_archiv + 1))
    ${primerasMod[$i]}"archiv"$num_archiv".txt"    
done

segundasMod=("chmod o+r " "chmod u-w " "chmod a-x " "chmod go-r " "chmod g-r,o+wx " "chmod u+w,o-r " "chmod u+w,g+x,o-x,o+w " "chmod u-rw,g-r " "chmod u+rw,g+rw,o+r ") 

num_archiv=0
for i in ${!segundasMod[@]}; do
    num_archiv=$((num_archiv + 1))
    ${segundasMod[$i]}"archiv"$num_archiv".txt"    
done


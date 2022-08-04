#!bin/bash
mkdir foo
mkdir foo/dummy
mkdir foo/empty

touch foo/dummy/file1.txt
touch foo/dummy/file2.txt

texto_a_grabar = ""
echo "Ingrese el texto para cargar el archivo 1"
read texto

if [ "$texto" == ""  ];
then
    echo "Que me gusta bash!!!!" > foo/dummy/file1.txt
else
    echo "$texto" > foo/dummy/file1.txt
fi



cp foo/dummy/file1.txt foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty/file2.txt

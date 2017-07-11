for i in ../../Data/Orthologs/Order_Enterobacterales_Representative/fastas/*.fasta; do
    echo $i, ${i//fasta/mfasta} 
    ~/workspace/MUSCLE/muscle3.8.31_i86darwin64 -in $i -out ${i//fasta/mfasta}
    done

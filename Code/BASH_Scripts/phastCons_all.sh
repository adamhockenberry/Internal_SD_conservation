#i=../../Data/Orthologs/Order_Enterobacterales_Reference/mfastas_nt/VBIEscCol129921_0030.mfasta
#~/workspace/phast-master/bin/phastCons --refidx 0 $i myphylofitattempt.mod > temp.wig 

#for i in ../../Data/Orthologs/Order_Enterobacterales_Reference/mfastas_nt/*.mfasta; do
#    outfile=../../Results/Order_Enterobacterales_Reference/phastCons/$(basename $i)
#    outfile=${outfile/mfasta/wig}
#    echo $outfile
#    ~/workspace/phast-master/bin/phastCons --refidx 0 $i Reference232seqModel.mod > $outfile 
#done

for i in ../../Data/Orthologs/Order_Enterobacterales_Representative/mfastas_nt/*.mfasta; do
    outfile=../../Results/Order_Enterobacterales_Representative/phastCons/$(basename $i)
    outfile=${outfile/mfasta/wig}
    echo $outfile
    ~/workspace/phast-master/bin/phastCons --refidx 0 $i Representative101seqModel.mod > $outfile 
done

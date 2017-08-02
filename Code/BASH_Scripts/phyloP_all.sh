#for i in ../../Data/Orthologs/Order_Enterobacterales_Reference/mfastas_nt/*.mfasta; do
#    outfile=../../Results/Order_Enterobacterales_Reference/phyloP/$(basename $i)
#    outfile=${outfile/mfasta/wig}
#    echo $outfile
#    ~/workspace/phast-master/bin/phyloP --wig-scores --refidx 0 --method LRT Reference232seqModel.mod $i > $outfile 
#    outfile=../../Results/Order_Enterobacterales_Reference/phyloP_GERP/$(basename $i)
#    outfile=${outfile/mfasta/wig}
#    echo $outfile
#    ~/workspace/phast-master/bin/phyloP --wig-scores --refidx 0 --method GERP Reference232seqModel.mod $i > $outfile 
#done

for i in ../../Data/Orthologs/Order_Enterobacterales_Mixed/mfastas_nt/*.mfasta; do
    outfile=../../Results/Order_Enterobacterales_Mixed/phyloP_CONACC/$(basename $i)
    outfile=${outfile/mfasta/wig}
    echo $outfile
    ~/workspace/phast-master/bin/phyloP --wig-scores --refidx 0 --method LRT --mode CONACC Mixed108seqModel.mod $i > $outfile 
done


#for i in ../../Data/Orthologs/Order_Enterobacterales_Representative/mfastas_nt/VBIEscCol129921_268*.mfasta; do
#    echo $i
#    ~/workspace/phast-master/bin/phyloP --wig-scores --refidx 0 --method LRT Representative101seqModel.mod $i > $outfile 
#    ~/workspace/phast-master/bin/phyloFit --tree ../../Data/Tree_files/Order_Enterobacterales_Representative/RAxML_bestTree.RepresentativeSet101seqsFLAT --EM --post-probs -P --out-root jussssttesting i 
#done

#~/workspace/phast-master/bin/phyloFit --tree ../../Data/Tree_files/Order_Enterobacterales_Representative/RAxML_bestTree.RepresentativeSet101seqsFLAT --EM -U --out-root jussssttesting blah.fa 

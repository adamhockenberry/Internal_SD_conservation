#!/bin/sh

for i in ../../Data/Orthologs/Order_Enterobacterales_Reference/mfastas_nt/*.mfasta; do
    ~/workspace/gerp/gerpcol -a -n 2 -t ./myphylofitattempt.newick -f $i -e 511145.12 -x .gerp_rates 
done

for i in ../../Data/Orthologs/Order_Enterobacterales_Reference/mfastas_nt/*.mfasta.gerp_rates; do
    mv $i ~/Projects/2017/GenomeDatabase/Results/GERP/
done

#./usearch10.0.240_i86osx32 -ublast ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -evalue 1e-9 -blast6out AB.u8
#./usearch10.0.240_i86osx32 -ublast ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -evalue 1e-9 -blast6out BA.u8
#./usearch10.0.240_i86osx32 -ublast ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -id 0.7 -evalue 1e-10 -blast6out AB.u8
#./usearch10.0.240_i86osx32 -ublast ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -id 0.7 -evalue 1e-10 -blast6out BA.u8
#./usearch10.0.240_i86osx32 -usearch_local ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -id 0.7 -evalue 1e-9 -blast6out AB_local.u8
#./usearch10.0.240_i86osx32 -usearch_local ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -id 0.7 -evalue 1e-9 -blast6out BA_local.u8
#./usearch10.0.240_i86osx32 -usearch_global ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -id 0.7 -blast6out AB_global.u8
#./usearch10.0.240_i86osx32 -usearch_global ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -id 0.7 -blast6out BA_global.u8
#./usearch10.0.240_i86osx32 -ublast ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -evalue 1e-9 -accel 0.5 -alnout resultsAB.aln 
#./usearch10.0.240_i86osx32 -ublast ~/Projects/2017/GenomeDatabase/FAAs/393305.7.PATRIC.faa -db ~/Projects/2017/GenomeDatabase/FAAs/511145.12.PATRIC.faa -evalue 1e-9 -accel 0.5 -alnout resultsBA.aln

#~/workspace/usearch/usearch10.0.240_i86osx32 -ublast ./FAAs/393305.7.PATRIC.faa -db ./FAAs/511145.12.PATRIC.faa -id 0.7 -evalue 1e-10 -blast6out ./orthologs/BA.u8

i=../../Data/FAAs/511145.12.PATRIC.faa
for j in ../../Data/FAAs/*.faa; do
    if [ "$i" != "$j" ]
    then
        echo $i$j
        newi="${i##*/}"
        newj="${j##*/}"
        outputFile=../../Data/Orthologs/${newi/.PATRIC.faa/}_vs_${newj/.PATRIC.faa/}.u8
        echo $outputFile
        ~/workspace/usearch/usearch10.0.240_i86osx32 -ublast $i -db $j -id 0.7 -evalue 1e-10 -blast6out $outputFile
        outputFile=../../Data/Orthologs/${newj/.PATRIC.faa/}_vs_${newi/.PATRIC.faa/}.u8
        echo $outputFile
        ~/workspace/usearch/usearch10.0.240_i86osx32 -ublast $j -db $i -id 0.7 -evalue 1e-10 -blast6out $outputFile
    fi
done

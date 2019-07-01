######################
### building index ###
######################

mkdir STAR_RSEM_index
cd STAR_RSEM_index
rsem-prepare-reference --gtf Homo_sapiens.GRCh38.87.gtf --star -p 6 Homo_sapiens.GRCh38.dna.primary_assembly.fa RSEM

##########################
### run NCLcomparator  ###
##########################

./NCLcomparator_new.sh -gtf Homo_sapiens.GRCh38.87.gtf \
 -genome GRCh38.p10.genome.fa \
 -trpts trpts \
 -thread 6 \
 -index STAR_RSEM_index \
 -read1 SRR1637089_1.fastq.gz \
 -read2 SRR1637089_2.fastq.gz \
 -intra example/5col/intra \
 -inter example/5col/inter \
 -sce example/SCE \
 -o HeLa
 

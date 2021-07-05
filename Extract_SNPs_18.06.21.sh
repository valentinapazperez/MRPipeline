#!/bin/bash
#Get location of QC Data, snp_list and out_directory 
#from PARAMS file 
source PARAMS


#Make output directory if required. Doesnt thow error if not present 
mkdir -p $out_dir

#Loop through chomosomes in QC data 
for i in {1..22}; do
        /shared/ucl/apps/bgen/1.1.4/bin/bgenix \
        -g ${UKB_QC}/C${i}_ukbb_v3_eur_indiv_variant_qc.bgen \
        -incl-rsids $snp_list | \

        #pipe to qctool to convert to gen
        /shared/ucl/apps/qctool/ba5eaa44a62f/bin/qctool_v2.0.1 -g - -filetype bgen \
        -og ${out_dir}/CHR${i}_extracted_snps.gen

        #concatenate gen files into merged file
        if [ -f ${out_dir}/CHR${i}_extracted_snps.gen ] ; then
                cat ${out_dir}/CHR${i}_extracted_snps.gen >> ${out_dir}/extracted_SNPs_plus_col.gen  
		awk '{$2=""; print $0}' ${out_dir}/extracted_SNPs_plus_col.gen >> ${out_dir}/extracted_snps.gen	

	#Remove irrelevant files
       	rm ${out_dir}/extracted_SNPs_plus_col.gen
       	rm ${out_dir}/CHR${i}_extracted_snps.gen

        fi 
done

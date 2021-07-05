#!/bin/bash

UKB_QC="/shared/ucl/depts/UKBiobank-500K-Full-Release-2018QC/UKB-QC/data_files/eur"
out_dir="/lustre/scratch/scratch/rmjlaga/RH_MR_MSc_project/Tests_VGVP"
snp_list="/lustre/scratch/scratch/rmjlaga/RH_MR_MSc_project/Tests_VGVP/cad_snps"

mkdir -p $out_dir
#rm ${out_dir}/*.gen

for i in {1..22}; do
        /shared/ucl/apps/bgen/1.1.4/bin/bgenix \
        -g ${UKB_QC}/C${i}_ukbb_v3_eur_indiv_variant_qc.bgen \
        -incl-rsids $snp_list | \

        #pipe to qctool to convert to gen
        /shared/ucl/apps/qctool/ba5eaa44a62f/bin/qctool_v2.0.1 -g - -filetype bgen \
        -og ${out_dir}/CHR${i}_extracted_snps.gen

        #concatenate gen files into merged file
        if [ -f ${out_dir}/CHR${i}_extracted_snps.gen ] ; then
                cat ${out_dir}/CHR${i}_extracted_snps.gen >> ${snp_list}_ALL.gen  
		awk '{$2=""; print $0}' ${snp_list}_ALL.gen >> ${snp_list}_FINAL.gen
	rm ${snp_list}_ALL.gen
	rm ${out_dir}/CHR${i}_extracted_snps.gen	

        fi
done

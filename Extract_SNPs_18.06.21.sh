#!/bin/bash
#Get location of QC Data, snp_list and out_directory
#from PARAMS file and other default arguments
source PARAMS

#Default values for arguments
#by default the output produced is a genotype and the name of the
#output is "extracted_snps"
output_name=extracted_snps


#Get arguments for function
#Arguments include -s for location of snplist file, b for bgen output, g
#for gen output, -o for output directory, -n for name of output


while getopts "s:bgo:n:" flag
do

       	case "${flag}" in
               	s) snp_list=${OPTARG} #enter snplist location
                       	;;
               	b) bgen=1 #output bgen file
                       	;;
               	g) gen=1 #output gen file
                       	;;
               	o) out_dir=${OPTARG} #set output directory
                       	;;
               	n) output_name=${OPTARG} #set file name
                       	;;
               	\?) echo "ERROR: Invalid option: -$OPTARG"
                       	exit 1
                       	;;
               	:) echo "ERROR: Option -$OPTARG requires an argument."
                       	exit 1
                       	;;
                       	
                esac 
                
done

#Make output directory if required. Doesnt thow error if not present
mkdir -p $out_dir

#If asking for genotype output
if [ $gen = 1 ]; then
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
                       	awk '{$2=""; print $0}' ${out_dir}/extracted_SNPs_plus_col.gen >> ${out_dir}/${output_name}.gen

                #Remove irrelevant files
                rm ${out_dir}/extracted_SNPs_plus_col.gen
                rm ${out_dir}/CHR${i}_extracted_snps.gen

                fi
        done
fi

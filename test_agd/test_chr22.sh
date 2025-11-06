
mkdir -p /nobackup/h_cqs/shengq2/biovu/prs/test_agd
cd /nobackup/h_cqs/shengq2/biovu/prs/test_agd

ld_cur_folder=$(dirname /data/cqs/references/PRScs/ldblk_ukbb_eur_agd/ldblk_ukbb_chr2.hdf5)
ln -s ${ld_cur_folder} ldblk_ukbb_eur_agd
echo "ld_folder: ldblk_ukbb_eur_agd : $ld_cur_folder"

echo "Running PRScs ..."
python3 /nobackup/h_cqs/shengq2/program/PRScs/PRScs.py \
  --ref_dir=ldblk_ukbb_eur_agd \
  --ref_snpname=locus \
  --sst_file=/nobackup/h_cqs/shengq2/biovu/prs/bells_palsy_eur.sst \
  --chrom=22 \
  --n_gwas=153280 \
  --seed=20250610 \
  --out=bells_palsy_eur_prs.chr22
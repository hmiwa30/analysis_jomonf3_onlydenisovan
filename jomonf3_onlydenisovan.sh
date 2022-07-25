#!/hmiwa/
#$ -cwd
#$ -V
#$ -l medium
#$ -l d_rt=384:00:00
#$ -l s_rt=384:00:00
#$ -l s_vmem=128G
#$ -l mem_req=128G
#$ -S /bin/bash
#$ -o ~/hmiwa/log/jomonf3_onlydenisovan.o
#$ -e ~/hmiwa/log/jomonf3_onlydenisovan.e
#$ -N J-f3_onlydenisovan
echo "####  ch1-22 txt copy job ####"
echo "start: `date`"
for chrnum in `seq 1 22`
do
  if [ $chrnum -lt 10 ]; then
    bzip2 -d -c -k /lustre7/home/hmiwa-spc/hmiwa/analysis_jomonf3/j_merged0${chrnum}.txt.bz2 > /lustre7/home/hmiwa-spc/hmiwa/analysis_jomonf3_onlydenisovan/results/j_merged0${chrnum}.txt;echo "copy done j_merged0${chrnum}.txt `date`"
    else
    bzip2 -d -c -k /lustre7/home/hmiwa-spc/hmiwa/analysis_jomonf3/j_merged${chrnum}.txt.bz2 > /lustre7/home/hmiwa-spc/hmiwa/analysis_jomonf3_onlydenisovan/results/j_merged${chrnum}.txt;echo "copy done j_merged${chrnum}.txt `date`"
    fi
done
echo "finish: `date`"
echo "####  make genofile job ####"
echo "start: `date`"
/opt/pkg/r/3.5.2/bin/Rscript ~/hmiwa/analysis_jomonf3_onlydenisovan/jomonf3_onlydenisovan.R;echo "R done `date`"
echo "finish: `date`"
echo "####  ch1-22 bzip job ####"
echo "start: `date`"
for chrnum in `seq 1 22`
do
  if [ $chrnum -lt 10 ]; then
    bzip2 /lustre7/home/hmiwa-spc/hmiwa/analysis_jomonf3_onlydenisovan/results/j_merged0${chrnum}.txt;echo "bzip2 done j_merged0${chrnum}.txt `date`"
    else
    bzip2  /lustre7/home/hmiwa-spc/hmiwa/analysis_jomonf3_onlydenisovan/results/j_merged${chrnum}.txt;echo "bzip2 done j_merged${chrnum}.txt `date`"
    fi
done
echo "finish: `date`"
#please do "qsub" under ~/hmiwa 

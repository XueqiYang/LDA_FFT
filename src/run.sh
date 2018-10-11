#! /bin/tcsh
rm out/*
rm err/*
rm log/*

#datasets name
#foreach VAR ("cs")
#no_cross_tune_grow_oracle
#foreach VAR ("dataset2" "dataset3")
#  foreach VAR1 ("accuracy" "recall" "precision" "false_alarm")
#    bsub -q standard -W 5000 -n 16 -o ./out/$VAR$VAR1.out.%J -e ./err/$VAR$VAR1.err.%J /share/tjmenzie/aagrawa8/miniconda2/bin/python2.7 main.py _test "$VAR" "$VA1" > log/"$VAR""$VAR1".log
#  end
#end

source requirements.sh
source ~/.bashrc
conda activate experiment

foreach VAR ("pitsA" "pitsB" "pitsC" "pitsD" "pitsE" "pitsF")
  ~/anaconda3/bin/python LDA.py _test "$VAR" > log/"$VAR".log
end

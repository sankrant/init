#/bin/bash
mrhost=${1#http://}
mrhost=${mrhost%%.*}
#echo "host=$mrhost"
mrlogfile="$mrhost.mrfs.log"
echo "logile=$mrlogfile"
echo -n `date +"%D %R"` >>~/$mrlogfile; curl -w '\t%{time_namelookup}\t%{time_connect}\t%{time_pretransfer}\t%{time_starttransfer}\t%{size_download}\t%{speed_download}\t%{time_total}\n' -o /dev/null -s $1 >>~/$mrlogfile

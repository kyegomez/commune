grep Loss miner-out.log | awk -F\| {'print $10'} | awk {'print $2'} | awk '{for(i=1;i<=NF;i++) {sum[i] += $i; sumsq[i] += ($i)^2}} END {for (i=1;i<=NF;i++) {printf "%f +/- %f \n", sum[i]/NR, sqrt((sumsq[i]-sum[i]^2/NR)/NR)}}'
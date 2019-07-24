#!/bin/sh
##### Variablen
echo user ist: $USER
a=0.2
b=3.0
c=55
for Km2pvalue in {$a} 
	do 
	for OdorUvalue in {$b}
		do 
		for SeedValue in {$c}
			do sed 's/Km2p_var = 0.4/Km2p_var = $a/g' <Parameter2.hoc >Parameter.hoc
			do sed 's/odor_u_var = 1.0/odor_u_var = $b/g' <Parameter2.hoc >Parameter3.hoc
			do sed 's/seedU_var = 77/seedU_var = $c/g' <Parameter3.hoc >Parameter4.hoc
		done
	done
done

echo Km2p_var ist: $a
echo OdorU ist: $b
echo Seed_var ist: $c
echo Anzahl der Parameter ist: $#

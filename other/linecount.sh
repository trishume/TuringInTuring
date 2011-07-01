#!/bin/zsh

typeset -i sum=0
typeset -i gens=0

setopt extended_glob
excl=(tdocparse/gendefs.t tdocparse/genconsts.t tdocparse/geninits.t)
for j in **/*.(t|g|rb)
do
	if ! [[ ${excl[(i)${j}]} -le ${#excl} ]] then
		sum=$(( sum + $(wc -l < "${j}") ))
	else
		gens=$(( gens + $(wc -l < "${j}") ))
	fi    
done

printf "total lines>[%d]\n generated lines>[%d]\n written lines>[%d]\n" $((sum + gens)) ${gens} ${sum}
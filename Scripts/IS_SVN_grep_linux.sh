#
#	Skripta za pronalaženje kolega koje rade slični obrazac/zadatak. 
#	Verzija za linux
#       p3zz4
#

echo -n "Unesite broj indeksa: "
read indeks
obrazac=$( grep -rh "Obrazac: " ./$indeks )
echo $obrazac
echo "--------------------------------------"
echo "Takav obrazac imaju:"
grep -rl "$obrazac" ./
echo "--------------------------------------"
echo -n "Unesi par reci teksta sa početka svog svog zadatka (npr: Informacioni sistem sportske kladionice): "
read zadatak
echo "Moguće je da slican zadatak imaju:"
grep -Rihl "$zadatak" ./


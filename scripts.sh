# rename a bunch of files all at once
for i in *.c.bak; do  mv "$i" "${i/c.bak/c}" ;done

for i in *.h.bak; do  mv "$i" "${i/h.bak/h}" ;done


for i in test_DP1_sounds/*; do ls "test_DP1_sounds/$i"; done


for i in *; do  cmp  "$i" "../proc_DP1_sounds_ben5/$i"; done

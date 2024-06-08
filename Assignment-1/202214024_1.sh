#!/bin/bash

# system name : Ubuntu-22.04
# full name   : Iftekharul Islam
# ID          : 202214024
# Section     : CSE-22(A)


# soln of a,b,c
mkdir '3-1' && cd '3-1'

for i in {0..7}; do

	mkdir 'CSE-30'${i}
	cd 'CSE-30'${i} 

	mkdir 'SecA' && cd 'SecA'
	mkdir 'Notes' && cd 'Notes'
	touch 'notes.tex' && chmod 755 'notes.tex' && cd ..
	touch 'lectures.md'
	touch 'materials.md'
	
	chmod 555 'lectures.md'
	chmod 777 'materials.md'

	cd ..

	mkdir 'SecB' && cd 'SecB'
	mkdir 'Notes' && cd 'Notes'
	touch 'notes.tex' && chmod 755 'notes.tex' && cd ..
	touch 'lectures.md'
	touch 'materials.md'

	chmod 555 'lectures.md'
	chmod 777 'materials.md'

	cd ..
done
cd ..
mkdir 'OS'

#soln of d
mv 'OS' ./'CSE-308'

#soln of e
ls -a > ./'CSE-308'/folder_info.txt

#soln of f
cur_dir=$(pwd) 
cd /. && sudo mkdir 'Backup'  #make dir in root
sudo cp ${cur_dir}/'CSE-308'/folder_info.txt ./Backup 

#soln of g
cd ${cur_dir}/'CSE-308'/
word_cnt=$(wc -w < folder_info.txt)
line_cnt=$(wc -l < folder_info.txt)

echo "Word count: ${word_cnt}" >> folder_info.txt
echo "Line count: ${line_cnt}" >> folder_info.txt

cd ..

for i in {0..7}; do
	cd 'CSE-30'${i} 
	rm -r 'CSE-30'${i}
	cd ..
done
#we could also store the folders,files using $(ls) and iterate through all & delete them



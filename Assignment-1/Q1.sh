#!/bin/bash

# soln of a,b,c
mkdir '3-1' && cd '3-1'

for i in {1..7}; do

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
mv 'OS' ./'CSE-301'

#soln of e
ls -a > ./'CSE-301'/folder_info.txt
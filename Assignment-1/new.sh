#!/bin/bash

mkdir '3-1' && cd '3-1'

for i in {1..7}; do

	mkdir 'CSE-30'${i}
	cd 'CSE-30'${i} 

	mkdir 'SecA' && cd 'SecA'
	touch 'notes-A.tex'
	touch 'lectures-A.md'
	touch 'materials-A.md'

	chmod 755 'notes-A.tex'
	chmod 555 'lectures-A.md'
	chmod 777 'materials-A.md'

	cd ..

	mkdir 'SecA' && cd 'SecB'
	touch 'notes-B.tex'
	touch 'lectures-B.md'
	touch 'materials-B.md'

	chmod 755 'notes-B.tex'
	chmod 555 'lectures-B.md'
	chmod 777 'materials-B.md'

	cd ..
done
mkdir 'OS'
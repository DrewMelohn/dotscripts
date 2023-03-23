SHELL = /bin/bash

SRCE = check-links makeflask

link: 
	for script in ${SRCE}; do\
        ln -s "~/.scripts/$$script" ~/bin/$$script;\
	done

unlink: 
	for script in ${SRCE}; do\
		rm ~/bin/$$script;\
		cp ~/.scripts/$$script ~/bin/$$script;\
	done

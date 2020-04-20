#!/bin/bash

path_to_help=$(pwd)/help
path_to_content=$(pwd)/file_content.dat
path_to_sizes=$(pwd)/file_sizes.dat
path_to_logs=$(pwd)/logs.dat
path_to_functions=$(pwd)/functions.sh
path_to_copy_buffer=$(pwd)/copy_buffer.dat

source $path_to_functions

clear
jump $1 $2
while $true
do
    trap '{ clear; echo "Quit by command q. Press Enter."; continue; }' INT
    echo "user: $(whoami)    $(pwd)    $(date)"
    printf "\n"
    echo "Size of content: $(du -sh .)"
    echo ""
    read -p ": " choice
    case $choice in
	q)
	    to_quit;;

	..)
	    move_up;;

	cd)
	   chandir;; 

	clear)
	    clear;;

	content)
	    content;;

	copy)
	    copy;;

	hddtmp)
	    hddtmp;;
	
	help)
	    clear
	    less -N $path_to_help
	    clear;;

	chmod)
	    change_mode;;

	info)
	    info;;

	mkdir)
	    makedir;; 

	paste)
	    paste;;

	rm)
	    removefile;;

	rmdir)
	    removedir;;

	usage)
	    list_size_content;;

	"")
	    clear
	    echo "Empty command input!"
	    printf "\n";;
	
	*)
	    clear
	    echo "No $choice command!"
	    printf "\n";;
    esac
done

#!/bin/bash

# $Id: dillinger-to-http.sh,v 1.1 2021/05/24 18:28:57 heiko Exp $
#
# $Log: dillinger-to-http.sh,v $
# Revision 1.1  2021/05/24 18:28:57  heiko
# Initial revision
#

# Print short help message
if [ -z $2 ]
then
	echo "Usage: $0 <source> <target>"
	exit 2
fi

# Array of all headings
HEADINGS=('Preface' \
'1_The_way_of_the_program' \
'11_The_Perl_programming_language')

# Keep original file
cp -ua $1 $2

# Remove line number from all anchor related phrases
for heading in "${HEADINGS[@]}"
do
	sed -i -e "s/${heading}_[0-9]\+/${heading}/g" $2
	if [ $? -eq 0 ]
	then
		echo "[  OK  ] $heading"
	else
		echo "[FAILED] $heading"
		exit 2
	fi
done

exit 0
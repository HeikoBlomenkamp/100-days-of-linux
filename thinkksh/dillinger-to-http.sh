#!/bin/bash

# $Id: dillinger-to-http.sh,v 2.1 2021/09/07 15:33:17 heiko Exp $
#
# $Log: dillinger-to-http.sh,v $
# Revision 2.1  2021/09/07 15:33:17  heiko
# R2D8: Added Section 1.5, and Section 1.6 (Debugging).
#
# Revision 1.2  2021/06/24 21:59:27  heiko
# R1D32: Added Section 1.4 (Formal and natural languages).
#
# Revision 1.1  2021/05/29 22:25:27  heiko
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
'11_The_KSH_programming_language' \
'12_What_is_a_program' \
'13_What_is_debugging' \
'14_Formal_and_natural_languages' \
'15_The_first_program' \
'16_Debugging')

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

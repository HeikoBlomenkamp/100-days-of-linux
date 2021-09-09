#!/bin/bash

# $Id: dillinger-to-http.sh,v 2.2 2021/09/09 13:10:56 heiko Exp $
#
# $Log: dillinger-to-http.sh,v $
# Revision 2.2  2021/09/09 13:10:56  heiko
# R2D10: Added Section 1.6 (Debugging).
#
# Revision 2.1  2021/09/03 13:57:57  heiko
# R2D4: Added Section 1.5 (The first program).
#
# Revision 1.4  2021/06/01 07:17:52  heiko
# R1D10: Added Section 1.4 (Formal and natural languages).
#
# Revision 1.3  2021/05/28 12:20:47  heiko
# R1D6: Added Section 1.3 (What is debugging?).
#
# Revision 1.2  2021/05/27 14:09:14  heiko
# R2D5: Added Section 1.2 (What is a program?).
#
# Revision 1.1  2021/05/23 19:29:43  heiko
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
'11_The_Python_programming_language' \
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

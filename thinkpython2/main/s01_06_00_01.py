# $Id: s01_06_00_01.py,v 2.1 2021/09/14 18:12:28 heiko Exp $
#
# $Log: s01_06_00_01.py,v $
# Revision 2.1  2021/09/14 18:12:28  heiko
# R2D15: Section 1.6 (Debugging).
#

print ''
print 'Section 1.6 (Debugging):'

print ''
print 'In[1]:='
print 'print \'Hello, World!\''
print ''
print 'Out[1]='
print 'Hello, World!'

print ''
print 'In[2]:='
print 'print Hello, World!\''
print ''
print 'Out[2]='
print '  File "s01_06_00_01.py", line 15'
print '    print Hello, World!\''
print '                      ^'
print 'SyntaxError: invalid syntax'

print ''
print 'In[3]:='
print 'print \'Hello, World!'
print ''
print 'Out[3]='
print '  File "s01_06_00_01.py", line 27'
print '    print \'Hello, World!'
print '                       ^'
print 'SyntaxError: EOL while scanning string literal'

print ''
print 'In[4]:='
print 'priNt \'Hello, World!\''
print ''
print 'Out[4]='
print '  File "s01_06_00_01.py", line 37'
print '    priNt \'Hello, World!\''
print '                        ^'
print 'SyntaxError: invalid syntax'
print ''

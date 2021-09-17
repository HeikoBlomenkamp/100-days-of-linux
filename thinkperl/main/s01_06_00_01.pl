# $Id: s01_06_00_01.pl,v 2.1 2021/09/17 22:10:50 heiko Exp $
#
# $Log: s01_06_00_01.pl,v $
# Revision 2.1  2021/09/17 22:10:50  heiko
# R2D18: Section 1.6 (Debugging).
#

print "\n";
print "Section 1.6 (Debugging):";

print "\n\n";
print "In[1]:=\n";
print "print \"Hello, World!\\n\"";
print "\n\n";
print "Out[1]=\n";
print "Hello, World!\n";

print "\n";
print "In[2]:=\n";
print "print Hello, World!\\n\"";
print "\n\n";
print "Out[2]=\n";
print "No comma allowed after filehandle at s01_06_00_01.pl line 15.";

print "\n\n";
print "In[3]:=\n";
print "print \"Hello, World!\\n";
print "\n\n";
print "Out[3]=\n";
print "Can't find string terminator '\"' anywhere before";
print " EOF at s01_06_00_01.pl line 23.";

print "\n\n";
print "In[4]:=\n";
print "priNt \"Hello, World!\\n\"";
print "\n\n";
print "Out[4]=\n";
print "String found where operator expected at s01_06_00_01.pl line 31,";
print " near \"priNt \n \"Hello, World!\\n\"\"";
print "\n\t(Do you need to predeclare priNt?)";
print "\nsyntax error at s01_06_00_01.pl line 31,";
print " near \"priNt \"Hello, World!\\n\"\"";
print "\nExecution of s01_06_00_01.pl aborted due to compilation errors.";

print "\n\n"

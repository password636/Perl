use strict;
use warnings;


print "subroutine is defined\n" if defined &myf;
myf();

sub myf
{
	print "called myf\n";
}

undef &myf;
#myf();
print "now subroutine is defined\n" if defined &myf;


sub name
{
    print "hello\n";
}

name;
&name;
name();
&name();

sub aname
{
	print "@_\n";
}
aname "arg1", "arg2";
#&name "arg1", "arg2";
aname("arg1", "arg2");
&aname("arg1", "arg2");

print "matched\n" if ("ab" =~ /ab(a*)/);
if ("ab" =~ /ab(a*)(b*)/)
{
	print "empty string\n" if $2 eq '';
}



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

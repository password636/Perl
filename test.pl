use strict;
use warnings;

my $s = "\t\n";
if ($s =~ s/^(\s+)$//)	
{
	print "|$1|";	# s/^(\s*)$// is the same, match \t\n because + is greedy.
}

$s = "\t\n";
if ($s =~ s/^(\s+?)$//)	
{
	print "|$1|";	# s/^(\s*)$// is the same, match \t\n because + is greedy.
}
print "[$s]";

$s = "\t\n";
if ($s =~ s/^(\s*?)$//)	
{
	print "|$1|";	# s/^(\s*?)$// is the same, match \t because +? is non-greedy.
}
print "[$s]";

$_ = "a";
print "ok\n" if /^c*a/;

$_ = "ab";
#print "|$`|$&|$'|\n" if /(.*)ab/;
print "|$1|\n" if /(.*)ab/;

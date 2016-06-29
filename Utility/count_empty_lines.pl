use strict;
use warnings;

my $line;
my $count;
while ($line = <STDIN>)
{
	if ($line eq "\n")	# 
	{
		print "empty line encountered.\n";
		$count++;
	}	
}
print "$count empty lines in total.\n";

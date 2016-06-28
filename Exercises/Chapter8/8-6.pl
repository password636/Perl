use strict;
use warnings;

while(<>)
{
	#chomp;
	if(/(\s+)$/)
	{
		print "$`=\n";
	}
}

use strict;
use warnings;
use feature 'state';

sub next_count
{
	state $counter = 0;	# only get executed in the first call
	return $counter++;
}

print next_count, "\n";
print next_count, "\n";
print next_count, "\n";
print next_count, "\n";

use strict;
use warnings;

use constant 
{
	NO_EXIT => 0,
	EXITED  => 1,
};
my $aaa = NO_EXIT;
BEGIN {
$aaa = EXITED;
}
print "$aaa\n";

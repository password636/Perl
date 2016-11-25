use strict;
use warnings;

# use constant ID => V ;

# use constant { ID1 => V1, ID2 => V2, ...} ;
# use constant anonymous_hashref ;

use constant DEBUG => 0x10;
use constant PI    => 4 * atan2(1,1);
print "Pi equals ", PI, "...\n" if DEBUG;

use constant 
{
	SEC => 0,
	MIN => 1,
	HOUR => 2,
	MDAY => 3,
	MON => 4,
	YEAR => 5,
	WDAY => 6,
	YDAY => 7,
	ISDST => 8,
};

print YDAY, "\n";

use constant WEEKDAYS => qw(Sunday Monday Tuesday Wednesday Thursday Friday Saturday);

print "Today is ", (WEEKDAYS)[(localtime)[WDAY]], ".\n";

print "Pi equals PI...\n";
print "Pi equals ".DEBUG."...\n";
#print oct('0.10');

use constant ARRAY => [1,2,3,4];
print ARRAY->[1], "\n";
print "ARRAY->[1]\n";
ARRAY->[1] = " be changed";
print ARRAY->[1], "\n";

    use constant E2BIG => ($! = 6);
    print   E2BIG, "\n";        # something like "Arg list too long"
    print 0+E2BIG, "\n";



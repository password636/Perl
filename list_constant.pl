use strict;
use warnings;

use constant WEEKDAY   => ('hi', 33, 'years', 'old');
use constant WEEKDAYS  => qw/Sunday Monday Tuesday Wednesday Thursday Friday Saturday/;	
use constant WEEKDAYS1 => ();	# undef or empty list
use constant WEEKDAYS2 => 50..60;

# undef in scalar context
if (defined WEEKDAYS1)
{
	print "defined\n";
}
else
{
	print "undef\n";
}

# To index or slice, must be placed in parentheses.
print( (WEEKDAYS)[4], "\n" );
print( (WEEKDAYS)[0, 3], "\n" );
print( (WEEKDAYS)[0..3], "\n" );


# maybe wrong
#my @array = ('A', 10, 'B', 20);
#use constant WEEKDAYS3 => @array;
#print( (WEEKDAYS3), "\n" );



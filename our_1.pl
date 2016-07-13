use strict;
use warnings;

our $PROGRAM_NAME = "waiter";
print "$PROGRAM_NAME\n";	# waiter
{
	our $PROGRAM_NAME = "server";
	print "$PROGRAM_NAME\n";	# server
}
print "$PROGRAM_NAME\n";	# server

use strict;
use warnings;


# >= 1 argument
#&name('hello', 'world');
# name name 'hello', 'world';	# error, but not abort 
@_ = qw(1 2);
&name();
 name();
&name;
 name;
sub name
{
	printf "func:\n";
}

&name();
 name();
&name;
 name;

=cut
&name('hello', 'world');
 name('hello', "world\n");
 name 'hello', "world\n";

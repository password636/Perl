use strict;
use warnings;

my $n = 0;
while ( $n < 10 )
{
	print "$n\n";
	$n++;
	last if ( $n > 5 );
	print "in-while\n";
}
continue
{
	print "do here\n";
};
print "--------------------\n";
foreach ( 1..10 )
{
	print "$_\n";
	next if $_ == 4;
	print "in-foreach\n";
}
continue 
{
	print "in-continue\n";
}
print "--------------------\n";
$n = 0;
while ( $n < 10 )
{
	print "$n\n";
	$n++;
	redo if $n == 8;
	print "in-while\n";
}
continue
{
	print "I'm continue\n";
}

$x = 123;
my $y = (my $x = 123 and $x == 123);

if ( $y )
{
	print "True\n";
}
else
{
	print "False\n";
}


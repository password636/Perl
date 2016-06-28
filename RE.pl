use warnings;
use strict;

if ( "fredbarney" =~ /fred\t*barney/ )
{
	printf "1 match\n";
}
if ( "fred\tbarney" =~ /fred\t*barney/ )
{
	printf "2 match\n";
}
if ( "fred\t\tbarney" =~ /fred\t*barney/ )
{
	printf "3 match\n";
}

if ( "fredbarney" =~ /fred.*barney/ )
{
	printf "4 match\n";
}
if ( "fredabcdefgbarney" =~ /fred.*barney/ )
{
	printf "5 match\n";
}
if ( "fred\nbarney" =~ /fred.*barney/ )	# [S]
{
	printf "6 match\n";
}

if ( "hello, world" =~ /(fred)*/ )	# dangerous match!
{
	printf "7 match\n";
}
if ( "" =~ /(fred)*/ )
{
	printf "8 match\n";
}

if ( "a\nb" =~ /a.b/ )		# [\d\D] vs .
{
	printf "101 match\n";
}
if ( "a\nb" =~ /a[\d\D]b/ )	# [\d\D], [\w\W], [\s\S]
{
	printf "9 match\n";
}

if( "a[b" =~ /a\[b/)
{
	printf "102 match\n";
}
if( "a]b" =~ /a]b/)
{
	printf "10 match\n";
}
if( "a[b]" =~ /a\[b]/)
{
	printf "103 match\n";
}

if( "r" =~ /[^def]/)
{
	printf "11 match\n";
}
if ( "Hello there, neighbour" =~ /\s(?:\w+,)\s+(\w+)/ )	# (?:  grouping only
{
	print "|$'|\n";
}
my $ss = "home, sweet home!";
if( $ss =~ s/home/cave/g)	# global match
{
	printf "$ss\n";	
}
# ) is a special character in RE
$_ = ")";
print "matched!\n" if /\)/;
__END__
/fred|barney|betty/
/fred( |\t)+barney/
/fred( +|\t+)barney/
/HAL-[0-9]+/
/\bhunt/
/stone\b/
/\bsearch\B/
/^fred|barney$/
/^(fred|barney)$/
/(wilma|pebbles?)/






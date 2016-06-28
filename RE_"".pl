use strict;
use warnings;

## RE has the two double-quoted string literal abilities:
## variable interpolation (scalar and array variable) and escape sequences

# variable interpolation - scalar variable
my $s = "ll";
if ( "hello\$s" =~ /e${s}o/ )
{
	print "matched\n";
}
else
{
	print "not matched\n";
}

# variable interpolation - array variable
my @array = qw/ab cd/;
if ( "just wab cdb a space" =~ /w@{array}b/ )	# ab<space>cd
{
	print "matched\n";
}
else
{
	print "not matched\n";
}

# escape sequences
if ( "a\tb\nCDEfg" =~ /\tb\n\Ucde\Efg/ )	
{
	print "matched\n";
}
else
{
	print "not matched\n";
}





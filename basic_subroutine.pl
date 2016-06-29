use warnings;
use strict;

# subroutine can be overwritten/redefined (with warning)
sub wilma
{
	printf "wilma\n";
}
sub wilma
{				# Subroutine wilma redefined at basic_subroutine.pl line 10.
	printf "WILMA\n";
}
&wilma;

# & makes sure call subroutine
sub print
{
	printf "my print: $_[0]";
}
print "hello\n";	# call system print()
&print ("hello\n");	# call my print()

# ALL Perl subroutines have a return value
# 1) no return 	: the value of the last evaluated expression
# 2) return;	: undef or empty list
# 3) return EXP;
sub calc
{
	my ($arg) = @_;
	if($arg)
	{
		1+2;
	}
	else
	{
		3+4;
	}		# no return
}
my $r1 = &calc(1);
printf "$r1\n";		# 3
my $r2 = &calc(0);
printf "$r2\n";		# 7

# can return a list [S]
sub get_pair
{
	return ("name", "lizl");
}
my ($key, $value) = &get_pair();	# use list to receive
print "$key $value\n";

# can pass any number of arguments. 
sub test_arg
{
	my ($one, $two) = @_;	# just use two
	print "only use two arguments: $one $two\n";
}
&test_arg(1,2,3,4);

sub test_arg1
{
	my ($one, $two, $three) = @_;	# $three gets undef
	print "\$three gets undef\n" if ( ! defined $three );
}
&test_arg1(1,2);


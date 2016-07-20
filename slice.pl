use strict;
use warnings;

# list slice
my $age = ("lizl", 33, "male")[1];
print "$age\n";
my ($sex, $age1) = ("lizl", 33, "male")[2, 1];
print "I'm $sex, and $age1 years old\n";
($sex, $age1) = ("lizl", 33, "male")[-1, 1];
print "I'm $sex, and $age1 years old\n";


sub func
{
	return qw(a b c);
}

my $t = (func)[1];
print $t, "\n";


__END__
compare to $name[] or $name{}, which get one element at a time. 
Slice can get any number of elements at a time

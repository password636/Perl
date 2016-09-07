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


# slices : selectively
# @name[]
# @name{}
my @names = qw/slash filippo axl steve beckham/;
my @football_players = @names[1,4]; # array slice ($name[1], $names[4]), not 1 to 4
my @guns_and_roses = @names[0,2,3];
print "@football_players\n";
print "@guns_and_roses\n";

my %hash = (
	A => 1,
	B => 2,
	C => 3,
	D => 4
);
my @array = @hash{"B", 'D'};	# hash slice ($hash{"B"}, $hash{'D'})
printf "@array\n";

__END__
compare to $name[] or $name{}, which get one element at a time. 
Slice can get any number of elements at a time

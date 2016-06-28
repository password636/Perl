use warnings;
use strict;

# another way to avoid using quotes (besides qw shortcut)
my @computers = (desktop => production => engineer => );
my @computerss= qw/desktop production engineer/; # qw shortcut

# generate an empty list 
my @empty_array = 5..1;	# range operator only counts uphill
my @empty_array1= ();	# tradional way

# slices : selectively
# @array[]
# @hash{}
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


# use * as minimus field width in printf, printf will use the first item
# of the following list as minimu field width
printf "%*s\n", 10, "hello";

my @betty = (); # empty an array
%hash = ();	# empty a hash

# /g in list context: pick up all words in a string [S]
# /g is originally for replacement, 
my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig);	# the trick is g
print "Result: @words\n";
# Result: Fred dropped a ton granite block on Mr Slate

# more on g modifier: return number of match if no g; return matched substrings if g
my $s = "hello, world";
@array = $s =~ /\w+/ ;		# =~ is higher than =
print "@array\n";		# (1)
@array = $s =~ /\w+/g ;		# when used with g
print "@array\n";		# hello world 
@array = $s =~ /hel/g ;		
print "@array\n";		# hel 


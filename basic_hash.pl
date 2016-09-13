use warnings;
use strict;

my %hash = (
	zongliang => "li",
	no => "future",
);

my @keys   = keys %hash;	# get all the keys
my @values = values %hash;	# get all the values
printf "@keys\n";	
printf "@values\n";	

if ( exists $hash{zongliang} )	# if a key exists
{
	printf "zongliang exists as a key in the hash\n";
}
my %r_hash = reverse %hash;	# if a value exists: reverse + exists
if ( exists $r_hash{li} )
{
	printf "li exists as a value in the hash\n";
}

print scalar keys %hash, " pairs in the hash\n";	# number of pairs
print scalar values %hash, " pairs in the hash\n";	# number of pairs

delete $hash{no};	# delete a pair, not just delete a key
print scalar keys %hash, " pairs in the hash\n";

$hash{new} = "future";	# add a pair, just directly assign
print scalar keys %hash, " pairs in the hash\n";

# the only way to use each is in a while loop
while ( my ($key, $value) = each %hash )	# iterate by pair
{
	printf "key is %s, value is %s\n", $key, $value;
}
#----------------------------------------------------------------
# undef can be value, can't be key
my %info = (
	name=>"li zongliang",
	age=>33,
	#undef, "beijing",	# warning in strict
	"beijing", undef,	# OK. $info{beijing}'s value is undef
);

my %info1 = (
	name=>"li zongliang",
	age=>33,
	age=>32,	# overwrite the last
	city=>"beijing",
);
print $info1{age}, "\n";
print scalar keys %info1, "\n";  # still 3 pairs

# hash index can be scalar variable
for my $key (keys %hash)
{
	print "$key $hash{$key}\n";
}
# can join a hash
print( join (" ", %hash), "\n");

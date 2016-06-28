use strict;
use warnings;


my $s = "hello, world";
my @array = $s =~ /\w+/ ;	# =~ is higher than =
print "@array\n";		# 1
@array = $s =~ /\w+/g ;		# when used with g
print "@array\n";		# hello world
@array = $s =~ /hel/g ;		
print "@array\n";		# hel

__END__
my @array = 1..10;
my @new = @array[1,3,5,7,9];
print "@new\n";


my %people = (
	zongliang => male =>
	haijiao => female =>
);

my @names = keys %people;
my @sex = values %people;

print "@names\n";
print "@sex\n";
print scalar @names, "\n";
print scalar @sex, "\n";

if (exists $people{haijiao})
{
	print "the key exists\n";
}

my %r_people = reverse %people;
if (exists $r_people{male})
{
	print "the value exists\n";
}

delete $people{haijiao};
if (exists $people{haijiao})
{
	print "the key exists\n";
}
else
{
	print "haijiao is deleted\n";
}	

$people{haijiao} = "girl";

if (exists $people{haijiao})
{
	print "the key exists\n";
}
else
{
	print "haijiao is deleted\n";
}	


while (my ($key, $value)=each %people)
{
	printf "key is %s, value is %s\n",$key, $value;
}

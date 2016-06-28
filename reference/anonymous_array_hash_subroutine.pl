use strict;
use warnings;

my $ref_2 = {
	name => "lizl",
	age => 33,
};
my $ref_3 = [ "NEC", "Symantec", "TianLian", "Spirent" ];

print "My name is $ref_2->{name}, and I'm $ref_2->{age} years old.\nI'm currently working for $ref_3->[3]\n";


my $ref_func = sub {
	my ($m, $n) = @_;
	$m + $n;
};

my $l = 3;
my $t = 4;
print "The sum of $l + $t is ", $ref_func->($l, $t), ".\n";

__END__
$ref = {...}; # {} returns a reference to an anonymous hash
$ref = [...]; # [] returns a reference to an anonymous array
$ref = sub{}; # sub{} returns a reference to an anonymous subroutine

$ref->[]
$ref->{}
$ref->()

use strict;
use warnings;

# {} returns a reference to an anonymous hash
my $ref_2 = {
	name => "lizl",
	age => 33,
};

# [] returns a reference to an anonymous array
my $ref_3 = [ "NEC", "Symantec", "TianLian", "Spirent" ];

print "My name is $ref_2->{name}, and I'm $ref_2->{age} years old.\nI'm currently working for $ref_3->[3]\n";

# sub{} returns a reference to an anonymous subroutine
my $ref_func = sub {
	my ($m, $n) = @_;
	$m + $n;
};

my $l = 3;
my $t = 4;
print "The sum of $l + $t is ", $ref_func->($l, $t), ".\n";

__END__

GRAMMAR		IS				USE
[ , , ]		array reference			$ref->[]
{ , , }		hash reference			$ref->{}
sub {}		subroutine reference		$ref->()

@array = ( , , );
%hash  = ( , , );

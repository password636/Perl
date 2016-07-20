use strict;
use warnings;

my $ref = { name=>"lizl", age=>33 };

unless(ref $ref)
{
	print "\$ref is not a referece\n";
}
if(ref $ref)
{
	print "\$ref is a reference to ", ref $ref, "\n";
}


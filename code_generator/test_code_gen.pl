use strict;
use warnings;

use mycodegen;

sub BEGIN
{
	print "BEGIN\n";
}

sub UNITCHECK
{
	print "UNITCHECK\n";
}

INIT
{
	print "INIT\n";
}

END
{
	print "END\n";
}

print "execute\n";

my $obj = new mycodegen;
print $obj->getName(), "\n";
$obj->hello();

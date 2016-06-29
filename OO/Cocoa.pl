use strict;
use warnings;

BEGIN{push (@INC, "/root/Perl/OO/pm")}
#use lib "/root/Perl";
use Cocoa;
my $object = new Cocoa;	# Cocoa->new();
print $object->getName(), "\n";

my $object1 = newp Cocoa("zongliang", "black", "blue");
print $object1->getName(), "\n";

my @all = $object1->getAll();
print "@all\n";


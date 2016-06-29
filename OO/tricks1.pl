use strict;
use warnings;

use File::Basename;
# /root/Perl/OO/pm/lizl.pm
use lib dirname(__FILE__)."/pm";	# can be called everywhere
#use lib "pm";	# only can be called under /root/Perl/OO/
use lizl;

my $object = new lizl;
print $object->getName(), "\n";

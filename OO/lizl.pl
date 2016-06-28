use strict;
use warnings;

# /root/Perl/OO/pm/lizl.pm
#use lib "/root/Perl/OO/pm";	
#use lizl;	
# OR,
#BEGIN{ push @INC, "/root/Perl/OO/pm" }

# use lizl
push @INC, "/root/Perl/OO/pm";
use lizl;

my $object = new lizl;
print $object->getName(), "\n";

my $name = lizl::getNameByClass();
print $name, "\n";

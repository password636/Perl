use strict;
use warnings;

use File::Basename;
#   File/Basename.pm

my $pathname = "/root/Perl/OO/some";
my $bname = basename $pathname;
my $dname = dirname  $pathname;

print "dirname is $dname, basename is $bname\n";


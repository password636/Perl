use strict;
use warnings;

use File::Basename qw(fileparse basename);

my $pathname = "/root/Perl/OO/some";
my $bname = basename $pathname;
print "basename is $bname\n";
# dirname is not available since it is not imported.
# my $dname = dirname  $pathname;



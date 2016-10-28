use strict;
use warnings;

my $filename = "for_filehandle";
my $fh;
#open $fh, $filename or die "Failed to open $filename\n";
if ($fh)
{
	print "opened\n";
}
else
{
	print "not opened\n";
}
close $fh;

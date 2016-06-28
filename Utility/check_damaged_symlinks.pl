use strict;
use warnings;

# assuming all symlinks target regular files
# this program also selects symblinks to directory

die "no file specified!\n" if @ARGV < 1;

for my $file (@ARGV)
{
	if (-l $file && ! -f $file)
	{
		print STDERR "$file\n";
	}
}

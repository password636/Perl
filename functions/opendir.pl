use strict;
use warnings;


sub printDir
{
	my $root = shift;

	#opendir DIR, $root or die "can't open dir $root\n";
	opendir my $dirh, $root or die "can't open dir $root\n";
	while (my $dir = readdir $dirh)
	{
		if (-d "$root/$dir" && "$dir" ne '.' && "$dir" ne '..')
		{		
			print "$dir\n";
			&printDir ("$root/$dir");
		}
		print "";
	}
}

my $root = $ARGV[0];
printDir $root;

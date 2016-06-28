use strict;
use warnings;

# -s returns number of bytes in size
my $r = -s "/etc";
print "$r\n";

print "test.link is a symbolic link\n" if -l "test.link";
print "test.link is a regular file\n" if -f "test.link";

# -l file
# -f file
# if file is a symbolic link, -l checks the symlink itself whereas -f checks the target
# -f can't tell between regular files and good symbolic links, but -l can.

for (@ARGV)
{
	if (-l)
	{ # symbolic link
		if (-f)
		{ # good symbolic link
			print "$_ is a good symbolic link\n";
		}
		else
		{ # damaged symbolic link
			print "$_ is a damaged symbolic link\n";
		}
	}
	elsif (-f)
	{ # regular file
		print "$_ is a regular file\n";
	}
}
# -l tests the symbolic link itself, not its target.
# All other file test operators test the target.

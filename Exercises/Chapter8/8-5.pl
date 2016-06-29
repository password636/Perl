use warnings;
use strict;
use 5.010;

while (<>) { # take one input line at a time
	chomp;
	if (/\b(?<word>\w*a)\b(.{0,5})/) {
		print "Matched: |$`<$&>$'|\n"; # the special match vars
		print "'word' contains '$+{word}'\n";
		print "after -a '$2'\n";	# $1 is $+{word}
	} else {
		print "No match: |$_|\n";
	}
}

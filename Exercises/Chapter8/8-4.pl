use warnings;
use strict;

while (<>) { # take one input line at a time
	chomp;
	if (/\b(?<word>\w*a)\b/) {
		print "Matched: |$`<$&>$'|\n"; # the special match vars
		print "'word' contains '$+{word}'\n";
	} else {
		print "No match: |$_|\n";
	}
}

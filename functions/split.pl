use warnings;
use strict;

## split /PATTERN/,EXPR
## split separators, string; 
## split a string on separators provided by RE
## split is a function based on RE. 

# single separator
my @fields = split /:/, "abc:def:g:h";		# typical use, one separator, RE provides the separator
printf "%d elements\n@fields\n", scalar @fields;
@fields = split ":", "abc:def:g:h";		# same effect. Not necessarily a RE
printf "%d elements\n@fields\n", scalar @fields;

# separators	 : ; < =
#@fields = split /[:-=]/, "abc:def=g:h<i;j";     # use a range character class
@fields = split ":-=", "abc:def=g:h<i;j";     # use a range character class
printf "%d elements\n@fields\n", scalar @fields;
@fields = split /[:=;<]/, "abc:def=g:h<i;j";    # or list each one, 4 separators
printf "%d elements\n@fields\n", scalar @fields;

### empty fields
# may generate empty fields, value is empty string ""
# not all empty fields are kept
@fields = split /:/, ":::a:b:::c:::";	# trailing empty fields are discarded [S]
printf "%d elements\n@fields\n", scalar @fields;

### split on whitespace (2 PATTERNs)
my $ss = "\t \tThis  is 			a \t\ntest \t "; # leading whitespaces
# 1: a single space in a single or double quoted string
@fields = split ' ', $ss;	# use ' ' instead of /PATTERN/, preferred
printf "--' ':\t%d elements\n", scalar @fields;
printf "|$_|\n" for @fields;
@fields = split " ", $ss;	# or " "
printf "--\" \":\t%d elements\n", scalar @fields;
printf "|$_|\n" for @fields;
#@fields = split / /, $ss;	# or " "
#printf "--/ /:\t%d elements\n@fields\n", scalar @fields;

# 2: a RE: /\s+/ 
@fields = split /\s+/, $ss;	# use \s+ pattern, one more element (an empty field) if leading whitespaces exist
printf "--/\\s+/:\t\t%d elements\n", scalar @fields;
printf "|$_|\n" for @fields;

$_ = " \t\tThis  is 			a \t\ttest";
@fields = split;	# default, split $_ on whitespace, same as split ' ', $_;
printf "--default:\t%d elements\n@fields\n", scalar @fields;

# omit the string, use default $_
$_ = ":a:b:c:";
@fields = split /:/;
printf "%d elements\n@fields\n", scalar @fields;

# split into single characters: / */
print join( ":", split / */, "hi there" ), "\n";
print join( ":", split / */, "hi t\th\nere" ), "\n";


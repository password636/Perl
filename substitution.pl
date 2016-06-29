use warnings;
use strict;

my $ss = "home, sweet home, NICE HOME!";
# return value
my $r = ($ss =~ s/home/cave/gi);	# return number of successful replacements if successful
if(! defined $r)
{
	printf "it's undef\n";
}
else
{
	print "not undef: $r\n";
}

$r = ($ss =~ s/home/cave/gi);		# return empty string if not successful?
if(! defined $r)
{
	printf "it's undef\n";
}
else
{
	print "not undef: $r\n";
}

#
$_ = "I saw BARneY with FrEd.";
s/(fred|barney)/\L\u$1/gi; 		# g is important here. \L\u [S]
print $_, "\n";

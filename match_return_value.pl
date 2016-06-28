use strict;
use warnings;

# 1 or empty string is just for true/false value
my $s = "home, sweet HOME";
my $r;
$r = ($s =~ /home/i);
print "$r\n";	# 1 

$r = ($s =~ /home/ig);
print "$r\n";	# 1

$r = ($s =~ /homei/i);
print "returns empty string\n" if $r eq '';

# number of successfuly replacements or empty string is just for true/false value
$r = ($s =~ s/homei/office/i);
print "returns empty string\n" if $r eq '';

$r = ($s =~ s/home/office/i);
print "$r\n";	# 1

$s = "home, sweet HOME";
$r = ($s =~ s/home/office/ig);
print "$r\n";	# 2


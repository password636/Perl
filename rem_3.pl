use strict;
use warnings;

$_ = "huge, scaly, green dinosaur";
s/,.*een//;
print "$_\n";		# remove ", scaly, green". not just ", green"

$_ = "huge (huge!) dinosaur";
s/huge/gigantic/;	# only substitute the first huge
print "$_\n";

# s/RE/SUB/
# numbered match variables are available in SUB
# escape sequences are also available in SUB
$_ = "I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi; # $_ is now "I saw BARNEY with FRED."
print "$_\n";


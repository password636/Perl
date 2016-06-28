use strict;
use warnings;

print "Please enter minimum field width, strings on separate lines:\n";
chomp (my @array = <STDIN>);
my $min_f_w = shift @array;
my $user_f_w = $min_f_w;
foreach (@array)
{
	if (length $_ > $min_f_w)
	{
		$min_f_w = length $_;		
	}
}


my $n = $min_f_w / 10 + 1;
my $ruler = "1234567890" x $n;
my $format = "%${user_f_w}s\n" x @array;
print $ruler, "\n";
printf $format, @array;

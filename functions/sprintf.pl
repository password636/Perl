use strict;
use warnings;

# extra arguments, just extra, no error
my $n = sprintf '%d', 1, 2;
print "$n\n";

printf "%d\n", 1, 2;

#my $s = sprintf "%2$d %1$d", 12, 34;	# wrong code
my $s = sprintf '%2$d %1$d', 12, 34;
print "$s\n";

# If no format parameter index, conversion (%d) uses the next unused argument
$s = sprintf '%3$d %d %1$d', 1, 2, 3;		
print "$s\n";					# 3 1 1

$s = sprintf '%3$d %d %1$d %d %d', 1, 2, 3;
print "$s\n";					# 3 1 1 2 3

$s = sprintf '%3$d %d %1$d %d %d %d', 1, 2, 3;	# Missing argument in sprintf
print "$s\n";					# 3 1 1 2 3 0

$s = sprintf '%02d', 9;
print "$s\n";
$s = sprintf '%02d', 19;
print "$s\n";

$s = sprintf '%d %0*d', 3, 2, 9;
print "$s\n";

__END__
%

format_parameter_index		2$
flags				0 - 
vector_flag			v
minimum_field_width		6
precison/maximum_field_width	.2

format_letter

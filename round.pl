use warnings;
use strict;

# printf %f ('f'loating point)
printf "%.1f\n", 1.55555;	# 1.6
printf "%.2f\n", 1.55555;	# 1.56

# sprintf %f
print sprintf("%.1f", 1.55), "\n";

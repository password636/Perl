use strict;
use warnings;

die "failed to open file: $!\n" if ! open FH, "<", "$0";
close FH;

open FH, "<", "$0" or die "failed to open file: $!\n";
close FH;

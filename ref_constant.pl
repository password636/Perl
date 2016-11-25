use strict;
use warnings;

# hashref constant
use constant LOG_LEVEL => {
      SUMMARY=>1, ERROR=>3, WARN=>4, INFO=>5, TRACE=>7, DEBUG=>9, OFF=>10,
      S      =>1, E    =>3, W   =>4, I   =>5, T    =>7, D    =>9, O  =>10,
      1      =>1, 3    =>3, 4   =>4, 5   =>5, 7    =>7, 9    =>9, 10 =>10
};

# arrayref constant
my @array = 1..10;
use constant NUM => \@array;

#          $ref->{ERROR}
print LOG_LEVEL->{ERROR}, "\n";
#     $ref->[0]
print NUM->[0], "\n";



# 1 ref constant
use constant RESULT => {
        PASS            => 'PASS',              # 0
        FAIL            => 'FAIL',              # 1
        ABORT           => 'ABORT',             # 2
        NOTINUSE        => 'NOTINUSE',          # 3
};
# 4 constants
use constant {
        PASS            => 'PASSING',           # 0
        FAIL            => 'FAIL',              # 1
        ABORT           => 'ABORT',             # 2
        NOTINUSE        => 'NOTINUSE',          # 3
};
print RESULT->{PASS}, "\n";
print PASS, "\n";

print qw/a b c/[0];

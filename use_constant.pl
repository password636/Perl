use strict;
use warnings;

# scalar constant
use constant COUNT => 100;
print COUNT, "\n";

#COUNT = 2;	# error. compile-time?
use constant COUNT => 9;


__END__
# list constant
use constant WEEKDAYS => qw(
	Sunday Monday Tuesday Wednesday Thursday Friday Saturday
);
print "Today is ", (WEEKDAYS)[1], ".\n";

# (WEEKDAYS)[1] = "aa";

# hash constant
use constant WEEKABBR => {
	Monday => 'Mon',
	Tuesday => 'Tue',
	Wednesday => 'Wed',
	Thursday => 'Thu',
	Friday => 'Fri',
};
my $day = 'Wednesday';
print "The abbrevaiation for $day is ", WEEKABBR->{$day}, "\n";

#use constant identifier => something;

# reference constant
use constant CARRAY => [ 1,2,3,4 ];	# constant array reference
print CARRAY->[0], "\n";
CARRAY->[0] = 2;
print CARRAY->[0], "\n";

my $CARRAY = [10,2,3,4];
print $CARRAY->[0], "\n";
print CARRAY->[0], "\n";


__END__
my %abbr = WEEKABBR;
my $day = 'Wednesday';
print "The abbrevaiation for $day is ", $abbr{$day}, "\n";



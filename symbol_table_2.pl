use strict;
use warnings;

our $bar = "bar";
our $foo = "foo";
#*bar = *foo;
#*main::bar = *main::foo;
*::bar = *::foo;
print "\$bar $bar\n";
print "\$foo $foo\n";

print "$bar\n";
print "$main::bar\n";
print "$::bar\n";

our $foo1 = *main::foo{SCALAR};
print "$foo1\n";

our $wilma = "wilma";
our @wilma = 1..4;
our $blazer = "blazer";
*wilma = \$blazer;
print "$wilma\n";
print "@wilma\n";

our @ccc = 5..8;
*wilma = \@ccc;
print "@wilma\n";

my $r = *ccc{ARRAY};
print "@$r\n";



__END__
$varname
$main::varname
$::varname

*varname		*name{SCALAR}
*main::varname		*main::name{SCALAR}
*::varname

use strict;
use warnings;

# die-$!  partner
# eval-$@ partner
my $division;
eval { $division = 1 / 0; print "1111\n"; };
print "$@" if $@;	# $@ itself has a trailing newline
print "2222\n";

eval {
	die "just want to die here";	# message won't be printed, just abort eval block 
	print "open succeeds\n";
};
print "error occurred: $@" if $@;	# message goes into $@
print "hello, world\n";


eval{
	eval{
		my $n = 1 / 0;
	};
	die "inner: $@" if $@;
	print "3333";
};
print "outer: $@" if $@;

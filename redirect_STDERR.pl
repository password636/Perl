use warnings;
use strict;

die "failed to redirect STDERR: $!\n" if ! open STDERR, ">>", "a.log.err";	# reopen STDERR
warn "this is a warning\n";
print STDERR "another warning message\n";

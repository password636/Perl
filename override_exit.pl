use warnings;
use strict;
use Data::Dumper;
use sample;

use constant
{
	NO_EXIT => 0,
	EXITED  => 1,
};
my $exit_called = NO_EXIT;
my $exit_callback = sub { $exit_called = 1; };

BEGIN {
	*CORE::GLOBAL::exit = sub { $exit_callback->(@_) };
	#*CORE::GLOBAL::exit = sub { $exit_called = EXITED; };
}

my $rr = new sample;

$rr->samplefunc();

#print Dumper(\%main::);


print "after func\n";


__END__
sub func
{
	print "func\n";
	exit;
}

func;

print "after func\n";

print "exit called\n" if $exit_called; 
$exit_called = NO_EXIT;
print "aaa $exit_called\n";
func;

print "bbb $exit_called\n";
print "after func again\n";



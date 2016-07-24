use strict;
use warnings;


open FH, "| cat -n" 
	or die "$!";
print "OK\n";
print FH "Hello";
close FH or die "close $!|$?";


__END__
open F, "find / -atime +90 -size +1000 -print|" or die "fork: $!";
while (<F>) {
	chomp;
	printf "%s size %dK last accessed on %s\n",
	$_, (1023 + -s $_)/1024, -A $_;
}

use strict;
use warnings;

#use piped open to fork a child process
#open TMP, "perl subprocess.pl /tmp/stop|"
open TMP, "|perl subprocess.pl /tmp/stop"
	or die "$!";
# Closing a pipe also waits for the process executing on the pipe to complete
close TMP 
	or die "$? : $!";
print "parent exits\n";

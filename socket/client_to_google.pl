use strict;
use warnings;

use Socket;

my $server_port = shift || 80;
my $server      = 'www.bing.com';
my $proto       = getprotobyname('tcp'); #
my $inet_addr   = inet_aton($server) or die "$!";	#
my $pack_addr   = sockaddr_in($server_port, $inet_addr);	#

socket(CLIENT, PF_INET, SOCK_STREAM, $proto) 
	or die "$!";

connect(CLIENT, $pack_addr)
	or die "$!";
print "connected to $server on port $server_port\n";

send(CLIENT, "GET / HTTP/1.1\r\n\r\n" , 0);

while (<CLIENT>)
{
	print;
}

close(CLIENT);

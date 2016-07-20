use strict;
use warnings;

use Socket;

my $port = shift || 7890;
my $proto = getprotobyname('tcp');
my $server = "localhost";

socket(SERVER, PF_INET, SOCK_STREAM, $proto)
	or die "$!";

bind(SERVER, pack_sockaddr_in($port, inet_aton($server)))
	or die "$!";

listen(SERVER, 5)
	or die "$!";
print "server started port $port\n";

my $client_addr;

while($client_addr = accept(NEW_SOCKET, SERVER))
{
	my $name = gethostbyaddr($client_addr, AF_INET);

	print NEW_SOCKET "smile from the server";
	print "connection recieved from $name\n";
	close NEW_SOCKET;
}



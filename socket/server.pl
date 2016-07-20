use strict;
use warnings;
use Socket;

socket( SERVER, PF_INET, SOCK_STREAM, (getprotobyname('tcp'))[2]) or die "$!";

my $port = 12345;
my $server_ip_address = "127.0.0.1";
bind(SERVER, pack_sockaddr_in($port, inet_aton($server_ip_address))) or die "$!";

listen(SERVER, QUEUESIZE);

accept(NEW_SOCKET, SERVER);



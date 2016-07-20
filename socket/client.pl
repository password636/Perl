use strict;
use warnings;

use Socket;

socket(CLIENT, PF_INET, SOCK_STREAM, (getprotobyname('tcp'))[2]) or die "$!";

my $server_port = 12345;
my $server_ip_address = "127.0.0.1";
connect(CLIENT, pack_sockaddr_in($server_port, inet_aton($server_ip_address))) or die "$!";

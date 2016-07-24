use strict;
use warnings;
use Socket;

if(@ARGV < 1)
{
	print STDERR "usage:\n$0 <process a port number>\n";
	exit 1;
}

my $process_a_port = $ARGV[0];
my $process_a_address = '127.0.0.1';
my $process_a_network_address = inet_aton($process_a_address);

my $proto = getprotobyname('tcp');
socket(SERVER, PF_INET, SOCK_STREAM, $proto)
	or die "$!";
my $server_pack_addr = sockaddr_in(0, INADDR_ANY);
bind(SERVER, $server_pack_addr)
	or die "$!";
my $sock_name = getsockname(SERVER);
my ($port, $naddr) = sockaddr_in($sock_name);
my $host = inet_ntoa($naddr);
print "b: process b server started at port $port on host $host\n";

listen(SERVER, SOMAXCONN)
	or die "$!";

# create a client to connect process a, telling him my server port
socket(CLIENT, PF_INET, SOCK_STREAM, $proto)
	or die "$!";

my $process_a_socket_addr = sockaddr_in($process_a_port, $process_a_network_address);
connect(CLIENT, $process_a_socket_addr)
	or die "$!";
my $oldfh = select(CLIENT);
$| = 1;
select($oldfh);
print "b: send process a my server port: $port\n";
print CLIENT "$port\n";
# waits for process a client
my $a_pack_addr = accept(PROCESS_A_CLIENT, SERVER);
my ($a_port, $a_naddr) = sockaddr_in($a_pack_addr);
print "b: get connectin from process a at port $a_port on host ", inet_ntoa($a_naddr), "\n";
my $line = <PROCESS_A_CLIENT>;
print "b: receive message from process a: $line\n";

close CLIENT;
close SERVER;

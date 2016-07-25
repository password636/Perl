use strict;
use warnings;
use Socket;

my $protocol_number = getprotobyname('tcp');
socket(SERVER, PF_INET, SOCK_STREAM, $protocol_number)
	or die "$!";

my $server_socket_address = sockaddr_in(0, INADDR_ANY);

# understanding point 1: get effect when 0, INADDR_ANY in bind(). only pack here.
#my ($p, $s) = sockaddr_in($server_socket_address);
#print "$p on $s.\n";

bind(SERVER, $server_socket_address)
	or die "$!";

my $server_packed_addr = getsockname(SERVER);
my ($server_port, $server_address) = sockaddr_in($server_packed_addr);
my $a_server_addr = inet_ntoa($server_address);
print "a: process a server started at port $server_port on host $a_server_addr.\n";

listen(SERVER, SOMAXCONN)
	or die "$!";

# start process B
my $process_a_server_port = $server_port;
my $process_b = "|perl process_b.pl $process_a_server_port";
open(WONT_USE, $process_b)
	or die "$!";
# waits for process b client to connect to tell process b server address and port
my $process_b_socket_addr = accept(CLIENT, SERVER);
my ($process_b_client_port, $process_b_client_net_addr) = sockaddr_in($process_b_socket_addr);
my $process_b_client_address = inet_ntoa($process_b_client_net_addr);
print "a: connection from port $process_b_client_port on host $process_b_client_address.\n";

# get process b client message
my $b_server_port = <CLIENT>;
$b_server_port =~ s/\s+$//;
print "a: get process b server port: $b_server_port.\n";

my $b_server_addr = '127.0.0.1';
my $b_server_naddr = inet_aton($b_server_addr);
my $packed_b_addr = sockaddr_in($b_server_port, $b_server_naddr);
socket(ACLIENT, PF_INET, SOCK_STREAM, $protocol_number)
	or die "$!";
connect(ACLIENT, $packed_b_addr)
	or die "$!";

my $oldfh = select(ACLIENT);
$| = 1;
select($oldfh);
print ACLIENT "stc::create streamblock -name streablock1\n";

close SERVER;
close CLIENT;
close WONT_USE;

use strict;
use warnings;
use Data::Dumper;
use Thot;

#Define global variables

my $priority                         = "high";
my $timestamp                        = "on";

my $port1    = "$ARGV[0]";
my $port2    = "$ARGV[1]";

my @portlist = ($port1, $port2);
my $Result   = "PASS";

my $host = get_chassis_from_port (@portlist);

my @ports = (
        { port=>$port1, tester_ip=>"192.85.1.3", ip=>"192.85.1.1", mtu=>"1500" },
        { port=>$port2, tester_ip=>"192.85.2.3", ip=>"192.85.2.1", mtu=>"1500" }
);
my $port1_wrong = $port1;
$port1_wrong =~ s#\d+$#100#; 
my @ports_wrong = (
        { port=>$port1_wrong, tester_ip=>"192.85.1.3", ip=>"192.85.1.1", mtu=>"1500" },        
);

my $chassisIP                        = $host;
my $reportid                         = "";
my $tcid = " ";
my $PortList1                        = $port1;
$PortList1 =~ s#.*?/##;
my $PortList2                        = $port2;
$PortList2 =~ s#.*?/##;
my $PortList1_wrong                  = $port1_wrong;
$PortList1_wrong =~ s#.*?/##;
my $logValue                         = "2";



###################################################
# THoT Initialization -- TH_StartTC
my $Thot_Init;
$Thot_Init = Thot::StartTC('TC_ID' => \$tcid,
		    'REPORT_ID' => \$reportid,
		    'PARAM' => "4",
		    'chassisIP' =>\$chassisIP,
		    'PortList1'=>\$PortList1,
			'PortList2'=>\$PortList2,
		    'logValue'=>\$logValue);
print "\n------StartTC = ".$Thot_Init."\n";
###################################################

# override built-in exit()
use constant 
{
	EXIT_NOT_CALLED => 0,
	EXIT_CALLED  => 1,
};

my $exit_called = EXIT_NOT_CALLED;

BEGIN
{
	*CORE::GLOBAL::exit = sub { $exit_called = EXIT_CALLED; };
}

use Spirent;

#the function is used to get chassis from port variable
sub get_chassis_from_port {
    my %chassisHash;
    my @portlist = @_;
    foreach my $chassis (@portlist) {
        $chassis =~ s/\/.*//;
        $chassisHash{$chassis} = 1;
    }
    my $host = join(" ",keys(%chassisHash));
    return $host;
}

my $rt = new Spirent( host=>$host );

sub release_port
{
	my $ports = shift;
	
	foreach my $ent (@$ports)
	{
		print "release port $ent->{port}\n";
		$rt->invoke("stc::release $ent->{port}");
	}
	sleep 2;
}

sub check_exit
{
	my $exit_expected = shift;
	my $checkpoint = shift || "check_exit";
	
	print "checkpoint $checkpoint: exit_called $exit_called, exit_expected $exit_expected\n";
	if( $exit_called == $exit_expected) {
		print "init_modules() abort result as expected\n" 
	}
	else {
		$Result = "FAIL";
		print "\n<error> init_modules() abort result NOT as expected\n\n";
	}
	$exit_called = EXIT_NOT_CALLED;
}


#### without no_abort option ####
# successful init, should not abort
$exit_called = EXIT_NOT_CALLED;
if( ! $rt->init_modules(port=>\@ports, arp=>0) ) {
	$Result = "FAIL";
	print "\n<error> init_modules() failed\n\n";		
}
else{
	print "checkpoint1-1: init_modules() succeeded\n";
}
check_exit(EXIT_NOT_CALLED, "1-2");
release_port(\@ports);

# aborted init, should abort
Thot::ReportWrite(FILEID => $reportid,VERDICT => "PASS",
		            PRIORITY => $priority,TIMESTAMP => $timestamp,
			     COMMENT => "<negative test>level RT:ERROR msg Error", TAG=>"init_modules");
				 
$rt->init_modules(port=>\@ports_wrong, arp=>0);
           
Thot::ReportWriteTagEnd(TAG=>"init_modules");

check_exit(EXIT_CALLED, "2");


#### with no_abort option ####
# successful init, set to abort
if( !$rt->init_modules(port=>\@ports, arp=>0, no_abort=>JT::FALSE) ) {
	$Result = "FAIL";
	print "\n<error> no_abort=>JT::FALSE init_modules() failed\n\n";		
}
else{
	print "checkpoint3-1: no_abort=>JT::FALSE init_modules() succeeded\n";
}
check_exit(EXIT_NOT_CALLED, "3-2");
release_port(\@ports);

# successful init, set to return false
if( !$rt->init_modules(port=>\@ports, arp=>0, no_abort=>JT::TRUE) ) {
	$Result = "FAIL";
	print "\n<error> no_abort=>JT::TRUE init_modules() failed\n\n";		
}
else{
	print "checkpoint4-1: no_abort=>JT::TRUE init_modules() succeeded\n";
}
check_exit(EXIT_NOT_CALLED, "4-2");
release_port(\@ports);

# aborted init, set to abort
Thot::ReportWrite(FILEID => $reportid,VERDICT => "PASS",
		            PRIORITY => $priority,TIMESTAMP => $timestamp,
			     COMMENT => "<negative test>level RT:ERROR msg Error", TAG=>"init_modules");
$rt->init_modules(port=>\@ports_wrong, arp=>0, no_abort=>JT::FALSE);
Thot::ReportWriteTagEnd(TAG=>"init_modules");
check_exit(EXIT_CALLED, "5");

# aborted init, set to return false
Thot::ReportWrite(FILEID => $reportid,VERDICT => "PASS",
		            PRIORITY => $priority,TIMESTAMP => $timestamp,
			     COMMENT => "<negative test>level RT:ERROR msg Error", TAG=>"init_modules");
if( !$rt->init_modules(port=>\@ports_wrong, arp=>0, no_abort=>JT::TRUE) ) {
	print "checkpoint6-1: no_abort=>JT::TRUE init_modules() succeeded\n";		
}
else{
	$Result = "FAIL";
	print "\n<error> no_abort=>JT::TRUE init_modules() failed\n\n";
}
Thot::ReportWriteTagEnd(TAG=>"init_modules");
check_exit(EXIT_NOT_CALLED, "6-2");

Thot::ReportWrite(FILEID => $reportid,VERDICT => "PASS",
		            PRIORITY => $priority,TIMESTAMP => $timestamp,
			     COMMENT => "<negative test>level RT:ERROR msg Error", TAG=>"init_modules");
# random follow-up calls which will abort, init_modules() restores abort when finished
$rt->init_modules(port=>\@ports_wrong, arp=>0);
Thot::ReportWriteTagEnd(TAG=>"init_modules");
check_exit(EXIT_CALLED, "7");


# Thot EndTC
my $cleanup = "no";
my $rv = Thot::EndTC(TC_ID => $tcid,CLEANUP_SCRIPT => $cleanup,VERDICT => $Result);
print "The last result is $Result\n";
#$rt->close();
print "--------test over-------\n\n";

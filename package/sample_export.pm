package sample_export;

use Exporter (qw/import/);

our @EXPORT = qw/printa/;
our @EXPORT_OK = qw/printb printc/;

our $tentative_version = '1.0';

sub printa
{
	print "printa\n";
}
sub printb
{
	print "printb\n";
}
sub printc
{
	print "printc\n";
}

1;

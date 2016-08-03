use strict;
use warnings;

# symbol table is not a real Perl hash, but it acts like it.
sub sep
{
	print "="x20, "\n";
}

sep;
print "$_\n" for keys %main::;				# keys
sep;
print "$_\n" for values %main::;			# values
sep;
print "key _ exists\n" if exists $main::{_};		# exists
sep;
while ( my ($key, $value) = each %main:: )		# each
{
	print "$key\t\t\t$value\n";
}
sep;
our $lizl = "a simple string";
if ( exists $main::{lizl} )
{
	print "key `lizl' exists, delete it.\n";
	delete $main::{lizl};				# delete
	print "error\n" if ( exists $main::{lizl} );
	print "$lizl\n";
}

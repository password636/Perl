use warnings;
use strict;

### variables
my $scalar_variable;		# $scalar_variable gets undef
my @array;			# emtpy list ()

my ($var1, $var2) = ("hello"); 	# $var2 gets undef
my ($var4, $var5) = ();		# $var4, $var5 get undef

my $var3 = pop @array;		# $var3 gets undef

$array[9] = 1;		# $array[0] to $array[8] get undef

### subroutine
# return with no arguments return undef (scalar context) or empty list (list context)
sub nothing
{
	return;	# undef or empty list		
}
my $var6 = &nothing;
my @array2 = &nothing;

### <FH>: undef or empty list
die "failed to open: $!\n" if ! open INPUT, "<", "$0";
while ( <INPUT> ){}	# <FILEHANDLE> returns undef upon EOF in scalar context
die "failed to open: $!\n" if ! open INPUT, "<", "$0";
my @array3 = <INPUT>;	
my @array4 = <INPUT>;	# <FILEHANDLE> returns empty list upon EOF in list context
close INPUT;

__END__
printf "%d elements\n", scalar @array2;

if( !defined $var6)
{
	printf "undef\n";
}

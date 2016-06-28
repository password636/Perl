use File::Basename;
use a qw/hello/;

while(my ($key, $value)=each %INC)
{
	print "$key\t$value\n";
}

if ( 3 > 2 )
{

}

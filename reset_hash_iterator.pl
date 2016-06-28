use strict;
use warnings;

my %hash = ( a => 1, b => 2, c => 3, );

while( my($key, $value)  = each %hash ){
  keys %hash;	# reset the iterator of a hash by using keys or values
  print "$key $value\n";
}

#use strict;
#use warnings;

my $var = 15;
package pack1;
my $var = 26;
package pack2;
my $var = 34;
package pack1;
print "pack1: $var\n";
print "pack2: $pack2::var\n";
print "main : $main::var\n";
__END__
A package statement affects only dynamic variables--including those
you’ve used local() on--but not lexical variables created with my().

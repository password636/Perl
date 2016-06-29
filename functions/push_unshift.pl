use warnings;
use strict;

my @four = (4, "four");
my @minus2 = (-2, "minus2");

my @array = (1, "one");;

push @array, 2; 
push @array, "two", 3, "three";
push @array, @four;
print "@array\n";

unshift @array, "zero";
unshift @array, -1, "minus1", 0;
unshift @array, @minus2;
print "@array\n";



eval '$sum = 2 + 2';
print "The sum is $sum\n";

foreach my $op (qw!+ - * /!)
{
	my $result = eval "2 $op 2";
	print "2 $op 2 is $result\n";
}

print 'The quotient is ', eval '5/', "\n";
warn $@ if $@;

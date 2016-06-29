
package Foo;

$m = 1;
$n = 2;

show_foo("After assignment");

delete $Foo::{'m'};
delete $Foo::{'n'};

show_foo("After deletion");

sub show_foo
{
	print "-"x10, $_[0], "-"x10, "\n";
	print "\$n is $n\n\$m is $m\n";
	foreach my $entry (keys %Foo::)
	{
		print "$entry\n";
	}
}

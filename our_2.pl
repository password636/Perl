use strict 'vars';

$main::var = 10;
print "$main::vra\n";
if (! defined $main::vra)
{
	print "not defined\n";
}

# print "$var\n";
our $var;
print "$var\n";
# print "$vra\n";

for ( 1 .. 3 ) { &doit }

    sub doit {
        my $foo;
        print ++$foo . "\n";
    }

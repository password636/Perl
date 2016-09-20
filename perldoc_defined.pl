use strict;
use warnings;

if ( defined &foo )
{
	print "before foo function is defined\n";
}

sub foo
{
}

if ( defined &foo )
{
	print "after foo function is defined\n";
}

if ( defined &bar )
{
	print "before bar function is defined\n";
}

sub bar;

if ( defined &bar )
{
	print "after bar function is defined\n";
}

#sub bar {}

if (defined)
{
	print "before \$_ is defined\n";
}

$_ = 2;

if (defined)
{
	print "after \$_ is defined\n";
}

my @array = (1, undef, "a", "b");
my $e;
print "$e\n" while defined ($e = pop @array);

# defined vs. exists on hash element
my %hash = (
	name=>"lizl",
	age=>undef,
);

print "value defined\n" if defined $hash{age};
print "key exists\n" if exists $hash{age};


if ("ab" =~ /a(.*)b/)
{
	print "empty string matched\n" if $1 eq '';
}

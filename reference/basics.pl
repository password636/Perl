use strict;
use warnings;

# scalar variable
my $foo = "foo";	
# array variable
my @company = qw/NEC Symantec TianLian Spirent/;	
# hash variable
my %myInfo = (
	name => "lizl",
	age => 33,
);		
# subroutine
sub printTwo	
{
	my ($one, $two) = @_;
	print $one, " ", $two, "\n";
}

# the backslash operator, kinda like & (address-of) in C
my $scalar_ref = \$foo;		# $$ref
my $array_ref  = \@company;	# $ref->[]
my $hash_ref   = \%myInfo;	# $ref->{}
my $sub_ref    = \&printTwo;	# $ref->()
# way to use reference, the arrow operator
print "$foo\n";
print "$$scalar_ref\n";
print "${$scalar_ref}\n";

print "I'm currently working for $company[3]\n";
print "I'm currently working for $array_ref->[3]\n";

print "My name is $myInfo{name}, and I'm $myInfo{age} years old.\n";
print "My name is $hash_ref->{name}, and I'm $hash_ref->{age} years old.\n";

&printTwo("Hello", "World");
$sub_ref->("Hello", "World");

# another way to use reference
print "I'm currently working for ${$array_ref}[3]\n";
print "I'm currently working for $$array_ref[3]\n";

print "My name is ${$hash_ref}{name}, and I'm ${$hash_ref}{age} years old.\n";
print "My name is $$hash_ref{name}, and I'm $$hash_ref{age} years old.\n";

&{$sub_ref}("Hello", "World");
&$sub_ref("Hello", "World");



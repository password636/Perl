use strict;
use warnings;

# @array = @array;
# %hash  = %hash;
# @array = %hash;
# %hash  = @array;

my @language = qw/c c++ python/;
my @company  = qw/nec symantec tianlian spirent/;
my %personal = (name=>"lizl", age=>33, city=>"Beijing",);
my %sex      = (gender=>"male", likes=>"female");

@company = @language;
print scalar @company, "\n";	# 3

%personal = %sex;
print scalar keys %personal, "\n"; # 2

@language = %sex;
print scalar @language, "\n";	# 4

@company  = qw/nec symantec tianlian spirent/;
%sex = @company;
print scalar keys %sex, "\n";	# 2


# () = ();
my ($aa, $bb) = (1,2,3);	# 3 is discarded
print "$aa $bb\n";
my ($aa, $bb, $cc) = (4,5);	# $cc gets undef
print "$aa $bb ";
print "undef\n" if ! defined $cc;

# odd number of elements assigned to a hash
my @company1  = qw/nec symantec tianlian spirent where/;	# odd number
my %hash1 = @company1;	# warning if use warnings;
printf "%d pairs\n", scalar keys %hash1;	# but still works
print "value is undef\n" if ! defined $hash1{where};	# just gets undef

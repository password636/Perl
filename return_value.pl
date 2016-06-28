use warnings;
use strict;

# sort in scalar context: returns undef, so it reports "Useless use"
my $sort_s = sort 1..10;	# "Useless use of sort in scalar context"
if (! defined $sort_s)
{
	printf "return value is undef\n";
}

# reverse in scalar context
my $reverse_s = reverse 6..10; # (6,7,8,9,10), number->string, ("6", "7", "8", "9", "10")
printf "$reverse_s\n";	# "019876" <- "678910"

# push in scalar context
my @fred = qw (one two);
my $push_s = push @fred, 'three';	
printf "$push_s\n";	# 3

  # push will NOT return the pushed list in list context, because the pushed list is already
  # in @fred
my @barney = push @fred, 'four';	# (4), typical wrong use of push
print scalar @barney, "\n";
print $barney[0], "\n";

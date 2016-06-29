use strict;
use warnings;

# prepend each line with something
my $passage = "I'm not an American.\nBut I love to see US movies.\nLaugh at me if you want.\n";
print $passage;

$passage =~ s/^/[lizl]/gm;
print $passage;

# append each line with something
$passage = "I'm not an American.\nBut I love to see US movies.\nLaugh at me if you want\n";

$passage =~ s/$/[lizl]/gm;
$passage =~ s/\[lizl]$//;	# must step
print $passage;

__END__
s/^//gm		prepend
s/$//gm		append

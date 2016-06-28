use strict;
use warnings;

my $html = "I thought you said Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>";
if ($html =~ s/<BOLD>(.*)<\/BOLD>/$1/g )
{
	print $html, "\n";
}

$html = "I thought you said Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>";
if ($html =~ s/<BOLD>(.*?)<\/BOLD>/$1/g )
{
	print $html, "\n";
}

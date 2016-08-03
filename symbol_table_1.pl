{
	package globtut;

	$var = "a string";
	@var = qw(a list of strings);
	sub var {}
}

use Data::Dumper;

print Dumper(\%globtut::);

$myname = "a simple string";
print *myname{SCALAR}, "\n";

@myname = 1..10;
print *myname{ARRAY}, "\n";

%myname = (name=>'lizl');
print *myname{HASH}, "\n";

sub myname {}
print *myname{CODE}, "\n";

open scala, "<", "our1.pl";
print *scala{IO}, "\n";
format myname =
Test: @<<<<<<<< @||||| @>>>>>
$str,     $%,    '$' . int(10)
.
        $str = "widget";
        #$num = $cost/$quantity;
        $~ = 'myname';
        write;
print *myname{FORMAT}, "\n";


print *myname{GLOB}, "\n";
print ${*myname{GLOB}}, "\n";
print *myname{NAME}, "\n";
print *myname{PACKAGE}, "\n";


#print "$_\n" for keys %{*myname};

#print "is a ref\n" if ref *myname;

#print ${ *myname{SCALAR} }, "\n";
#print ${ *{$main::{myname}}{SCALAR} }, "\n";
#${ *myname{FOO} } = "the FOO data type";

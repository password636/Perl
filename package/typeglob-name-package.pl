$foo = "Some value";
$bar = "Another value";
who_am_i( *foo );
who_am_i( *bar );
sub who_am_i
{
local $glob = shift;
print "I'm from package " . *{$glob}{PACKAGE} . "\n";
print "My name is " . *{$glob}{NAME} . "\n";
}

sub name
{
    print "hello\n";
}
# 4 forms to call
name;
&name;
name();
&name();

sub aname
{
        print "@_\n";
}
aname "arg1", "arg2";
&aname "arg1", "arg2"; # syntax error
aname("arg1", "arg2");
&aname("arg1", "arg2");

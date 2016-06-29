BEGIN
{  
	print"in BEGIN module!\n";  
}  
 
END
{  
	print"in END module!\n";  
}  
 
die "exit Perl program!\n";  
__END__
BEGIN{}
END{}
Note no ;

use warnings;
use strict;

# in-file data [S]
while (<DATA>)	# just use 'DATA', not '__DATA__', 'DATA' is a FileHandle
{
	print;
}

close DATA;

__DATA__
The two control characters ^D and ^Z, and the tokens __END__ and __DATA__ may be used to indicate the logical end of the script before the actual end of file. Any following text is ignored.

Text after __DATA__ may be read via the filehandle PACKNAME::DATA , where PACKNAME is the package that was current when the __DATA__ token was encountered. The filehandle is left open pointing to the line after __DATA__. The program should close DATA when it is done reading from it. (Leaving it open leaks filehandles if the module is reloaded for any reason, so it's a safer practice to close it.) For compatibility with older scripts written before __DATA__ was introduced, __END__ behaves like __DATA__ in the top level script (but not in files loaded with require or do) and leaves the remaining contents of the file accessible via main::DATA .

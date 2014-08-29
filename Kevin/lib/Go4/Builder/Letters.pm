# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: a Builder subclass that provides Letter output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Builder::Letters;
    
    use base 'Go4::Builder'; # set/include  Go4::Builder as parent class
 
    sub getLetter1 {
	return "a";
    }
    sub getLetter2 {
	return "b";
    }
    sub getLetter3 {
	return "c";
    }
    
    
}
1;
__END__


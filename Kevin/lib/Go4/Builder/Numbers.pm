# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: a Builder subclass that provides Numeric output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Builder::Numbers;
    
    use base 'Go4::Builder'; # set/include  Go4::Builder as parent class
 
    sub getNumber1 {
	return "1";
    }
    sub getNumber2 {
	return "2";
    }
    sub getNumber3 {
	return "3";
    }
    
    
}
1;
__END__


# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: a Builder subclass that provides Symbol output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Builder::Symbols;
    
    use base 'Go4::Builder'; # set/include  Go4::Builder as parent class
 
    sub getSymbol1 {
	return '!';
    }
    sub getSymbol2 {
	return '@';
    }
    sub getSymbol3 {
	return '#';
    }
    
    
}
1;
__END__


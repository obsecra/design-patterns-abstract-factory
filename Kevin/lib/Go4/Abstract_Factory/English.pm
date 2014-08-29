# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: an Abstract Factory Classes that provides English Language output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Abstract_Factory::English;
    
    use base 'Go4::Abstract_Factory'; # set/include  Go4::Abstract_Factory as parent class
 
    sub getEnglishLanguageName {
	return 'English';
    }
    
    sub getHelloWorld {
	return "Hello World";
    }
    
    
}
1;
__END__


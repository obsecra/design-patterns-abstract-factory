# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: an Abstract Factory Classes that provides German Language output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Abstract_Factory::German;
    
    use base 'Go4::Abstract_Factory'; # set/include  Go4::Abstract_Factory as parent class

    sub getEnglishLanguageName {
	return 'German';
    }

    sub getHelloWorld {
	return "Hallo Welt";
    }
    
    
}
1;
__END__


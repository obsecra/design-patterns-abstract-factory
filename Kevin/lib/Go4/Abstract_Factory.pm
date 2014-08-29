# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Parent Class of Abstract Factory Classes
#          This class set will provide different language outputs 
# Usage: See POD at end of file
# $Id$
{
    package Go4::Abstract_Factory;

    sub new {
	my ( $proto ) = @_;
	return bless {}, ref($proto) || $proto;
    }
    
    sub getEnglishLanguageName {
	return 'Missing English Language Name Method';
    }
    
    sub getHelloWorld {
	return "Missing Hello World Method";
    }
    
}
1;
__END__


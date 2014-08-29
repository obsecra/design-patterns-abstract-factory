# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: a Factory Method Classe that provides Date output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Factory_Method::Date;
    
    use base 'Go4::Factory_Method'; # set/include  Go4::Factory_Method as parent class
 
    sub getString {
	my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
	$mon++;
	$year+=1900;
	return "$mday/$mon/$year";
    }
     
}
1;
__END__


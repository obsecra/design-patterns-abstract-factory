# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: a Factory Method Classe that provides Time output
# Usage: See POD at end of file
# $Id$

use strict;
{
    package Go4::Factory_Method::Time;
    
    use base 'Go4::Factory_Method'; # set/include  Go4::Factory_Method as parent class
 
    sub getString {
	my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
	return "$hour:$min:$sec";
    }
     
}
1;
__END__


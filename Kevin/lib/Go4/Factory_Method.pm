# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Parent Class of Factory Method
#          This class will create time or data obj based on paramter
# Usage: See POD at end of file
# $Id$
{
    package Go4::Factory_Method;

    use Go4::Factory_Method::Date;
    use Go4::Factory_Method::Time;

    sub new{
	my ( $proto, $type ) = @_;
	if($type eq 'Date'){
	    return Go4::Factory_Method::Date->new();
	}elsif($type eq 'Time'){
	    return Go4::Factory_Method::Time->new();
	}else{
	    return bless {}, ref($proto) || $proto;
	}
    }
    
    sub getString {
	return 'getString not implimented';
    }
    
    
}
1;
__END__


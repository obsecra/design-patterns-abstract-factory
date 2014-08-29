# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Examples of object oriented design patterns ( patterns from Go4 book )   
# Usage: See POD at end of file
# $Id$
{
    package Go4::Base;

    sub new {
	my ( $proto, $self ) = @_;
	$self ||= {};
	return bless $self, ref($proto) || $proto;
    }


    # Stupid Config Stuff 
    # FIXME switch to auto config 

    sub getAvaliableAbstractFactories {
	return qw(Go4::Abstract_Factory::English Go4::Abstract_Factory::Japanese Go4::Abstract_Factory::German); 
    }

}
1;
__END__


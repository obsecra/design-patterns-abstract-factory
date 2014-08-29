# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Examples of object oriented design patterns ( patterns from Go4 book )   
# Usage: See POD at end of file
# $Id$
{
    package Xeno::Base;

    sub new {
	my ( $proto, $self ) = @_;
	$self ||= {};
	return bless $self, ref($proto) || $proto;
    }
    
    sub new_local {
	my ( $proto, $self ) = @_;
	$self ||= {};
	return bless $self, caller(0);
     }

}
1;
__END__


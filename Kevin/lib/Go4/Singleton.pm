# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Parent Class of Singleton
#          This class will allow only one obj
# Usage: See POD at end of file
# $Id$
{
    package Go4::Singleton;

    sub new{
	my ( $proto ) = @_;
	return $Go4::Singleton::self if $Go4::Singleton::self;
	my $self = bless { }, ref($proto) || $proto;
	$Go4::Singleton::self = $self;
	return $self;
    }

    sub incrementCount {
	my ($self) = @_;
	$self->{'count'}++;
    }

    sub getCount {
	my ($self) = @_;
	return $self->{'count'};
    }
}

1;
__END__


# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Parent Class of Prototype
#          This class will a clone of obj
# Usage: See POD at end of file
# $Id$
{
    package Go4::Prototype;

    sub new{
	my ( $proto ) = @_;
	return bless { rand => rand() }, ref($proto) || $proto;
    }

    sub clone {
	my ($self) = @_;
	my $copy;
	foreach my $key (keys %{$self}) {
	    if(ref $self->{$key}) {
		$copy->{$key} = $self->{$key}->clone(); 
	    } else {
		$copy->{$key} = $self->{$key};
	    }
	}
	bless $copy, ref $self;
    }
    
    sub getRand {
	my ($self) = @_;
	return $self->{'rand'};
    }
    
    sub addRand {
	my ($self) = @_;
	$self->{'rand'} += rand();
    }
}
1;
__END__


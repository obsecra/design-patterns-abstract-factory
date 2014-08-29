# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Parent Class of Builder Classes
#          This class set will provide a 3 part string outputs 
# Usage: See POD at end of file
# $Id$
{
    package Go4::Builder;

    use	Go4::Builder::Numbers;
    use Go4::Builder::Letters;
    use Go4::Builder::Symbols;


    sub new {
	my ( $proto ) = @_;
	return bless {}, ref($proto) || $proto;
    }
    
    sub getString {
	
	my $string;
	my $numbers_obj = Go4::Builder::Numbers->new();
	$string .= $numbers_obj->getNumber1();
	$string .= $numbers_obj->getNumber2();
	$string .= $numbers_obj->getNumber3();

	my $letters_obj = Go4::Builder::Letters->new();
	$string .= $letters_obj->getLetter1();
	$string .= $letters_obj->getLetter2();
	$string .= $letters_obj->getLetter3();

	my $symbols_obj = Go4::Builder::Symbols->new();
	$string .= $symbols_obj->getSymbol1();
	$string .= $symbols_obj->getSymbol2();
	$string .= $symbols_obj->getSymbol3();

	return $string;
    }
    
    
}
1;
__END__


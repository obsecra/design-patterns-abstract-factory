#!/usr/bin/perl
# -*-perl-*-

# Author: Kevin Wilson
# Creation Date: 2014-08-27
# Copyright: (c) 2014 Xeno Industries 
# License: BSD
# Purpose: Examples of object oriented design patterns ( patterns from Go4 book )   
# Usage: See POD at end of file
# $Id$

#### Administrative Section 

BEGIN {
    our $VERSION = "0.1";
}

use strict;
use lib "./lib"; 
use base "Xeno::Base";

my $self = Xeno::Base->new_local();

#### Main

use Go4::Base;

my $go4 = Go4::Base->new();


## Abstract Factory

print qq{
Abstract Factories:
run trought list of avaliable abstract factories and run standard interface methods 

};

foreach my $abstract_factory_type ($go4->getAvaliableAbstractFactories){
    eval "require $abstract_factory_type"; # run time load of class
    my $abstract_factory = $abstract_factory_type->new(); 
    
    # run standard interface items
    my $language_name = $abstract_factory->getEnglishLanguageName;
    my $hello_world_str = $abstract_factory->getHelloWorld;
    
    print "$language_name -=> $hello_world_str\n";
}

print "###########\n\n";

## Builder

print qq{

Builder:
one call geterates 3 objects plus 3 method calls on each. shows 1-3a-c!@#

};

use Go4::Builder;
my $builder = Go4::Builder->new();
print $builder->getString."\n";

print "###########\n\n";


## Factory Method

print qq{

Factory Method:
create to obj via parameters. display time, date, and error.

};

use Go4::Factory_Method;

print Go4::Factory_Method->new('Time')->getString()."\n";
print Go4::Factory_Method->new('Date')->getString()."\n";
print Go4::Factory_Method->new('Error')->getString()."\n";

print "###########\n\n";

## Prototype

print qq{

Prototype:
display rand number, clone object, add rand number to new obj 

};

use Go4::Prototype;

my $prototype = Go4::Prototype->new();
my $prototype2 = $prototype->clone();
print "Obj1 init rand: ".$prototype->getRand()."\n";
$prototype->addRand();
print "Obj1 new rand: ".$prototype->getRand()."\n";

print "Obj2 init rand: ".$prototype2->getRand()."\n";
$prototype2->addRand();
print "Obj2 new rand: ".$prototype2->getRand()."\n";

print "###########\n\n";


## Prototype

print qq{

Singleton:
create first obj display count
create new 10 obj, and add 1 to count on each show count, distroy new obj

};

use Go4::Singleton;

my $singleton = Go4::Singleton->new();

for(my $i = 0; $i<10;$i++){
    my $singleton2 = Go4::Singleton->new();
    $singleton2->incrementCount();
    print "1: ".$singleton->getCount()."\t2: ".$singleton2->getCount()." \n";

}

print "###########\n\n";

__END__
=head1 NAME

Go4 OOD Pattern Examples

=head1 SYNOPSIS

Runs samples of gang of four object factories 

=head1 AUTHOR

 Kevin Wilson

=head1 COPYRIGHT

 Copyright (c) 2014, Xeno Industries 
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
   * Neither the name of Xeno Industries  nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL KEVIN WILSON OR XENO INDUSTRIES BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=head1 SUPPORT / WARRANTY

THIS SOFTWARE COMES WITH NO WARRANTY OF ANY KIND. NO SUPPORT WILL BE GIVEN.


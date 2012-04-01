package Date::Manip::TZ::asurum00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:29 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::asurum00 - Support for the Asia/Urumqi time zone

=head1 SYNPOSIS

This module contains data describing a time zone.  Most of the time zone
data comes from the Olsen database, but there are a few exceptions.

This module is not intended to be used directly.  Other Date::Manip modules
will load it as needed.

=cut

use strict;
use warnings;
require 5.010000;

our (%Dates,%LastRule);
END {
   undef %Dates;
   undef %LastRule;
}

our ($VERSION);
$VERSION='6.31';
END { undef $VERSION; }

%Dates         = (
   1    =>
     [
        [ [1,1,2,0,0,0],[1,1,2,5,50,20],'+05:50:20',[5,50,20],
          'LMT',0,[1927,12,31,18,9,39],[1927,12,31,23,59,59],
          '0001010200:00:00','0001010205:50:20','1927123118:09:39','1927123123:59:59' ],
     ],
   1927 =>
     [
        [ [1927,12,31,18,9,40],[1928,1,1,0,9,40],'+06:00:00',[6,0,0],
          'URUT',0,[1980,4,30,17,59,59],[1980,4,30,23,59,59],
          '1927123118:09:40','1928010100:09:40','1980043017:59:59','1980043023:59:59' ],
     ],
   1980 =>
     [
        [ [1980,4,30,18,0,0],[1980,5,1,2,0,0],'+08:00:00',[8,0,0],
          'CST',0,[1986,5,3,15,59,59],[1986,5,3,23,59,59],
          '1980043018:00:00','1980050102:00:00','1986050315:59:59','1986050323:59:59' ],
     ],
   1986 =>
     [
        [ [1986,5,3,16,0,0],[1986,5,4,1,0,0],'+09:00:00',[9,0,0],
          'CDT',1,[1986,9,13,14,59,59],[1986,9,13,23,59,59],
          '1986050316:00:00','1986050401:00:00','1986091314:59:59','1986091323:59:59' ],
        [ [1986,9,13,15,0,0],[1986,9,13,23,0,0],'+08:00:00',[8,0,0],
          'CST',0,[1987,4,11,15,59,59],[1987,4,11,23,59,59],
          '1986091315:00:00','1986091323:00:00','1987041115:59:59','1987041123:59:59' ],
     ],
   1987 =>
     [
        [ [1987,4,11,16,0,0],[1987,4,12,1,0,0],'+09:00:00',[9,0,0],
          'CDT',1,[1987,9,12,14,59,59],[1987,9,12,23,59,59],
          '1987041116:00:00','1987041201:00:00','1987091214:59:59','1987091223:59:59' ],
        [ [1987,9,12,15,0,0],[1987,9,12,23,0,0],'+08:00:00',[8,0,0],
          'CST',0,[1988,4,9,15,59,59],[1988,4,9,23,59,59],
          '1987091215:00:00','1987091223:00:00','1988040915:59:59','1988040923:59:59' ],
     ],
   1988 =>
     [
        [ [1988,4,9,16,0,0],[1988,4,10,1,0,0],'+09:00:00',[9,0,0],
          'CDT',1,[1988,9,10,14,59,59],[1988,9,10,23,59,59],
          '1988040916:00:00','1988041001:00:00','1988091014:59:59','1988091023:59:59' ],
        [ [1988,9,10,15,0,0],[1988,9,10,23,0,0],'+08:00:00',[8,0,0],
          'CST',0,[1989,4,15,15,59,59],[1989,4,15,23,59,59],
          '1988091015:00:00','1988091023:00:00','1989041515:59:59','1989041523:59:59' ],
     ],
   1989 =>
     [
        [ [1989,4,15,16,0,0],[1989,4,16,1,0,0],'+09:00:00',[9,0,0],
          'CDT',1,[1989,9,16,14,59,59],[1989,9,16,23,59,59],
          '1989041516:00:00','1989041601:00:00','1989091614:59:59','1989091623:59:59' ],
        [ [1989,9,16,15,0,0],[1989,9,16,23,0,0],'+08:00:00',[8,0,0],
          'CST',0,[1990,4,14,15,59,59],[1990,4,14,23,59,59],
          '1989091615:00:00','1989091623:00:00','1990041415:59:59','1990041423:59:59' ],
     ],
   1990 =>
     [
        [ [1990,4,14,16,0,0],[1990,4,15,1,0,0],'+09:00:00',[9,0,0],
          'CDT',1,[1990,9,15,14,59,59],[1990,9,15,23,59,59],
          '1990041416:00:00','1990041501:00:00','1990091514:59:59','1990091523:59:59' ],
        [ [1990,9,15,15,0,0],[1990,9,15,23,0,0],'+08:00:00',[8,0,0],
          'CST',0,[1991,4,13,15,59,59],[1991,4,13,23,59,59],
          '1990091515:00:00','1990091523:00:00','1991041315:59:59','1991041323:59:59' ],
     ],
   1991 =>
     [
        [ [1991,4,13,16,0,0],[1991,4,14,1,0,0],'+09:00:00',[9,0,0],
          'CDT',1,[1991,9,14,14,59,59],[1991,9,14,23,59,59],
          '1991041316:00:00','1991041401:00:00','1991091414:59:59','1991091423:59:59' ],
        [ [1991,9,14,15,0,0],[1991,9,14,23,0,0],'+08:00:00',[8,0,0],
          'CST',0,[9999,12,31,0,0,0],[9999,12,31,8,0,0],
          '1991091415:00:00','1991091423:00:00','9999123100:00:00','9999123108:00:00' ],
     ],
);

%LastRule      = (
);

1;

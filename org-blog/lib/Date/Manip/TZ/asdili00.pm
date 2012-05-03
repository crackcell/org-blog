package Date::Manip::TZ::asdili00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:34 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::asdili00 - Support for the Asia/Dili time zone

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
        [ [1,1,2,0,0,0],[1,1,2,8,22,20],'+08:22:20',[8,22,20],
          'LMT',0,[1911,12,31,15,37,39],[1911,12,31,23,59,59],
          '0001010200:00:00','0001010208:22:20','1911123115:37:39','1911123123:59:59' ],
     ],
   1911 =>
     [
        [ [1911,12,31,15,37,40],[1911,12,31,23,37,40],'+08:00:00',[8,0,0],
          'TLT',0,[1942,2,21,14,59,59],[1942,2,21,22,59,59],
          '1911123115:37:40','1911123123:37:40','1942022114:59:59','1942022122:59:59' ],
     ],
   1942 =>
     [
        [ [1942,2,21,15,0,0],[1942,2,22,0,0,0],'+09:00:00',[9,0,0],
          'JST',0,[1945,9,22,14,59,59],[1945,9,22,23,59,59],
          '1942022115:00:00','1942022200:00:00','1945092214:59:59','1945092223:59:59' ],
     ],
   1945 =>
     [
        [ [1945,9,22,15,0,0],[1945,9,23,0,0,0],'+09:00:00',[9,0,0],
          'TLT',0,[1976,5,2,14,59,59],[1976,5,2,23,59,59],
          '1945092215:00:00','1945092300:00:00','1976050214:59:59','1976050223:59:59' ],
     ],
   1976 =>
     [
        [ [1976,5,2,15,0,0],[1976,5,2,23,0,0],'+08:00:00',[8,0,0],
          'CIT',0,[2000,9,16,15,59,59],[2000,9,16,23,59,59],
          '1976050215:00:00','1976050223:00:00','2000091615:59:59','2000091623:59:59' ],
     ],
   2000 =>
     [
        [ [2000,9,16,16,0,0],[2000,9,17,1,0,0],'+09:00:00',[9,0,0],
          'TLT',0,[9999,12,31,0,0,0],[9999,12,31,9,0,0],
          '2000091616:00:00','2000091701:00:00','9999123100:00:00','9999123109:00:00' ],
     ],
);

%LastRule      = (
);

1;

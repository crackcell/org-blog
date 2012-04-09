package Date::Manip::TZ::inchag00;
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

Date::Manip::TZ::inchag00 - Support for the Indian/Chagos time zone

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
        [ [1,1,2,0,0,0],[1,1,2,4,49,40],'+04:49:40',[4,49,40],
          'LMT',0,[1906,12,31,19,10,19],[1906,12,31,23,59,59],
          '0001010200:00:00','0001010204:49:40','1906123119:10:19','1906123123:59:59' ],
     ],
   1906 =>
     [
        [ [1906,12,31,19,10,20],[1907,1,1,0,10,20],'+05:00:00',[5,0,0],
          'IOT',0,[1995,12,31,18,59,59],[1995,12,31,23,59,59],
          '1906123119:10:20','1907010100:10:20','1995123118:59:59','1995123123:59:59' ],
     ],
   1995 =>
     [
        [ [1995,12,31,19,0,0],[1996,1,1,1,0,0],'+06:00:00',[6,0,0],
          'IOT',0,[9999,12,31,0,0,0],[9999,12,31,6,0,0],
          '1995123119:00:00','1996010101:00:00','9999123100:00:00','9999123106:00:00' ],
     ],
);

%LastRule      = (
);

1;

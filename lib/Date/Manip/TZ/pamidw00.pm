package Date::Manip::TZ::pamidw00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:33 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::pamidw00 - Support for the Pacific/Midway time zone

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
        [ [1,1,2,0,0,0],[1,1,1,12,10,32],'-11:49:28',[-11,-49,-28],
          'LMT',0,[1901,1,1,11,49,27],[1900,12,31,23,59,59],
          '0001010200:00:00','0001010112:10:32','1901010111:49:27','1900123123:59:59' ],
     ],
   1901 =>
     [
        [ [1901,1,1,11,49,28],[1901,1,1,0,49,28],'-11:00:00',[-11,0,0],
          'NST',0,[1956,6,3,10,59,59],[1956,6,2,23,59,59],
          '1901010111:49:28','1901010100:49:28','1956060310:59:59','1956060223:59:59' ],
     ],
   1956 =>
     [
        [ [1956,6,3,11,0,0],[1956,6,3,1,0,0],'-10:00:00',[-10,0,0],
          'NDT',1,[1956,9,2,9,59,59],[1956,9,1,23,59,59],
          '1956060311:00:00','1956060301:00:00','1956090209:59:59','1956090123:59:59' ],
        [ [1956,9,2,10,0,0],[1956,9,1,23,0,0],'-11:00:00',[-11,0,0],
          'NST',0,[1967,4,1,10,59,59],[1967,3,31,23,59,59],
          '1956090210:00:00','1956090123:00:00','1967040110:59:59','1967033123:59:59' ],
     ],
   1967 =>
     [
        [ [1967,4,1,11,0,0],[1967,4,1,0,0,0],'-11:00:00',[-11,0,0],
          'BST',0,[1983,11,30,10,59,59],[1983,11,29,23,59,59],
          '1967040111:00:00','1967040100:00:00','1983113010:59:59','1983112923:59:59' ],
     ],
   1983 =>
     [
        [ [1983,11,30,11,0,0],[1983,11,30,0,0,0],'-11:00:00',[-11,0,0],
          'SST',0,[9999,12,31,0,0,0],[9999,12,30,13,0,0],
          '1983113011:00:00','1983113000:00:00','9999123100:00:00','9999123013:00:00' ],
     ],
);

%LastRule      = (
);

1;

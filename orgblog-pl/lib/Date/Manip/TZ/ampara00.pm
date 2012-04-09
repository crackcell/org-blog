package Date::Manip::TZ::ampara00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:36 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::ampara00 - Support for the America/Paramaribo time zone

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
        [ [1,1,2,0,0,0],[1,1,1,20,19,20],'-03:40:40',[-3,-40,-40],
          'LMT',0,[1911,1,1,3,40,39],[1910,12,31,23,59,59],
          '0001010200:00:00','0001010120:19:20','1911010103:40:39','1910123123:59:59' ],
     ],
   1911 =>
     [
        [ [1911,1,1,3,40,40],[1910,12,31,23,59,48],'-03:40:52',[-3,-40,-52],
          'PMT',0,[1935,1,1,3,40,51],[1934,12,31,23,59,59],
          '1911010103:40:40','1910123123:59:48','1935010103:40:51','1934123123:59:59' ],
     ],
   1935 =>
     [
        [ [1935,1,1,3,40,52],[1935,1,1,0,0,16],'-03:40:36',[-3,-40,-36],
          'PMT',0,[1945,10,1,3,40,35],[1945,9,30,23,59,59],
          '1935010103:40:52','1935010100:00:16','1945100103:40:35','1945093023:59:59' ],
     ],
   1945 =>
     [
        [ [1945,10,1,3,40,36],[1945,10,1,0,10,36],'-03:30:00',[-3,-30,0],
          'NEGT',0,[1975,11,20,3,29,59],[1975,11,19,23,59,59],
          '1945100103:40:36','1945100100:10:36','1975112003:29:59','1975111923:59:59' ],
     ],
   1975 =>
     [
        [ [1975,11,20,3,30,0],[1975,11,20,0,0,0],'-03:30:00',[-3,-30,0],
          'SRT',0,[1984,10,1,3,29,59],[1984,9,30,23,59,59],
          '1975112003:30:00','1975112000:00:00','1984100103:29:59','1984093023:59:59' ],
     ],
   1984 =>
     [
        [ [1984,10,1,3,30,0],[1984,10,1,0,30,0],'-03:00:00',[-3,0,0],
          'SRT',0,[9999,12,31,0,0,0],[9999,12,30,21,0,0],
          '1984100103:30:00','1984100100:30:00','9999123100:00:00','9999123021:00:00' ],
     ],
);

%LastRule      = (
);

1;

package Date::Manip::TZ::inanta00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:27 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::inanta00 - Support for the Indian/Antananarivo time zone

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
        [ [1,1,2,0,0,0],[1,1,2,3,10,4],'+03:10:04',[3,10,4],
          'LMT',0,[1911,6,30,20,49,55],[1911,6,30,23,59,59],
          '0001010200:00:00','0001010203:10:04','1911063020:49:55','1911063023:59:59' ],
     ],
   1911 =>
     [
        [ [1911,6,30,20,49,56],[1911,6,30,23,49,56],'+03:00:00',[3,0,0],
          'EAT',0,[1954,2,27,19,59,59],[1954,2,27,22,59,59],
          '1911063020:49:56','1911063023:49:56','1954022719:59:59','1954022722:59:59' ],
     ],
   1954 =>
     [
        [ [1954,2,27,20,0,0],[1954,2,28,0,0,0],'+04:00:00',[4,0,0],
          'EAST',1,[1954,5,29,19,59,59],[1954,5,29,23,59,59],
          '1954022720:00:00','1954022800:00:00','1954052919:59:59','1954052923:59:59' ],
        [ [1954,5,29,20,0,0],[1954,5,29,23,0,0],'+03:00:00',[3,0,0],
          'EAT',0,[9999,12,31,0,0,0],[9999,12,31,3,0,0],
          '1954052920:00:00','1954052923:00:00','9999123100:00:00','9999123103:00:00' ],
     ],
);

%LastRule      = (
);

1;

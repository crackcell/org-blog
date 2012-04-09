package Date::Manip::TZ::amcaye00;
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

Date::Manip::TZ::amcaye00 - Support for the America/Cayenne time zone

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
        [ [1,1,2,0,0,0],[1,1,1,20,30,40],'-03:29:20',[-3,-29,-20],
          'LMT',0,[1911,7,1,3,29,19],[1911,6,30,23,59,59],
          '0001010200:00:00','0001010120:30:40','1911070103:29:19','1911063023:59:59' ],
     ],
   1911 =>
     [
        [ [1911,7,1,3,29,20],[1911,6,30,23,29,20],'-04:00:00',[-4,0,0],
          'GFT',0,[1967,10,1,3,59,59],[1967,9,30,23,59,59],
          '1911070103:29:20','1911063023:29:20','1967100103:59:59','1967093023:59:59' ],
     ],
   1967 =>
     [
        [ [1967,10,1,4,0,0],[1967,10,1,1,0,0],'-03:00:00',[-3,0,0],
          'GFT',0,[9999,12,31,0,0,0],[9999,12,30,21,0,0],
          '1967100104:00:00','1967100101:00:00','9999123100:00:00','9999123021:00:00' ],
     ],
);

%LastRule      = (
);

1;

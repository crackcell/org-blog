package Date::Manip::TZ::ambogo00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:24 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::ambogo00 - Support for the America/Bogota time zone

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
        [ [1,1,2,0,0,0],[1,1,1,19,3,40],'-04:56:20',[-4,-56,-20],
          'LMT',0,[1884,3,13,4,56,19],[1884,3,12,23,59,59],
          '0001010200:00:00','0001010119:03:40','1884031304:56:19','1884031223:59:59' ],
     ],
   1884 =>
     [
        [ [1884,3,13,4,56,20],[1884,3,13,0,0,0],'-04:56:20',[-4,-56,-20],
          'BMT',0,[1914,11,23,4,56,19],[1914,11,22,23,59,59],
          '1884031304:56:20','1884031300:00:00','1914112304:56:19','1914112223:59:59' ],
     ],
   1914 =>
     [
        [ [1914,11,23,4,56,20],[1914,11,22,23,56,20],'-05:00:00',[-5,0,0],
          'COT',0,[1992,5,3,4,59,59],[1992,5,2,23,59,59],
          '1914112304:56:20','1914112223:56:20','1992050304:59:59','1992050223:59:59' ],
     ],
   1992 =>
     [
        [ [1992,5,3,5,0,0],[1992,5,3,1,0,0],'-04:00:00',[-4,0,0],
          'COST',1,[1993,4,4,3,59,59],[1993,4,3,23,59,59],
          '1992050305:00:00','1992050301:00:00','1993040403:59:59','1993040323:59:59' ],
     ],
   1993 =>
     [
        [ [1993,4,4,4,0,0],[1993,4,3,23,0,0],'-05:00:00',[-5,0,0],
          'COT',0,[9999,12,31,0,0,0],[9999,12,30,19,0,0],
          '1993040404:00:00','1993040323:00:00','9999123100:00:00','9999123019:00:00' ],
     ],
);

%LastRule      = (
);

1;

package Date::Manip::TZ::paguam00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:25 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::paguam00 - Support for the Pacific/Guam time zone

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
        [ [1,1,2,0,0,0],[1,1,1,9,39,0],'-14:21:00',[-14,-21,0],
          'LMT',0,[1844,12,31,14,20,59],[1844,12,30,23,59,59],
          '0001010200:00:00','0001010109:39:00','1844123114:20:59','1844123023:59:59' ],
     ],
   1844 =>
     [
        [ [1844,12,31,14,21,0],[1845,1,1,0,0,0],'+09:39:00',[9,39,0],
          'LMT',0,[1900,12,31,14,20,59],[1900,12,31,23,59,59],
          '1844123114:21:00','1845010100:00:00','1900123114:20:59','1900123123:59:59' ],
     ],
   1900 =>
     [
        [ [1900,12,31,14,21,0],[1901,1,1,0,21,0],'+10:00:00',[10,0,0],
          'GST',0,[2000,12,22,13,59,59],[2000,12,22,23,59,59],
          '1900123114:21:00','1901010100:21:00','2000122213:59:59','2000122223:59:59' ],
     ],
   2000 =>
     [
        [ [2000,12,22,14,0,0],[2000,12,23,0,0,0],'+10:00:00',[10,0,0],
          'ChST',0,[9999,12,31,0,0,0],[9999,12,31,10,0,0],
          '2000122214:00:00','2000122300:00:00','9999123100:00:00','9999123110:00:00' ],
     ],
);

%LastRule      = (
);

1;

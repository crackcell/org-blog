package Date::Manip::TZ::asvien00;
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

Date::Manip::TZ::asvien00 - Support for the Asia/Vientiane time zone

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
        [ [1,1,2,0,0,0],[1,1,2,6,50,24],'+06:50:24',[6,50,24],
          'LMT',0,[1906,6,8,17,9,35],[1906,6,8,23,59,59],
          '0001010200:00:00','0001010206:50:24','1906060817:09:35','1906060823:59:59' ],
     ],
   1906 =>
     [
        [ [1906,6,8,17,9,36],[1906,6,9,0,15,56],'+07:06:20',[7,6,20],
          'SMT',0,[1911,3,10,16,54,39],[1911,3,11,0,0,59],
          '1906060817:09:36','1906060900:15:56','1911031016:54:39','1911031100:00:59' ],
     ],
   1911 =>
     [
        [ [1911,3,10,16,54,40],[1911,3,10,23,54,40],'+07:00:00',[7,0,0],
          'ICT',0,[1912,4,30,16,59,59],[1912,4,30,23,59,59],
          '1911031016:54:40','1911031023:54:40','1912043016:59:59','1912043023:59:59' ],
     ],
   1912 =>
     [
        [ [1912,4,30,17,0,0],[1912,5,1,1,0,0],'+08:00:00',[8,0,0],
          'ICT',0,[1931,4,30,15,59,59],[1931,4,30,23,59,59],
          '1912043017:00:00','1912050101:00:00','1931043015:59:59','1931043023:59:59' ],
     ],
   1931 =>
     [
        [ [1931,4,30,16,0,0],[1931,4,30,23,0,0],'+07:00:00',[7,0,0],
          'ICT',0,[9999,12,31,0,0,0],[9999,12,31,7,0,0],
          '1931043016:00:00','1931043023:00:00','9999123100:00:00','9999123107:00:00' ],
     ],
);

%LastRule      = (
);

1;

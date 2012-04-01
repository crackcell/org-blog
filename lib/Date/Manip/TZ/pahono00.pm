package Date::Manip::TZ::pahono00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:35 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::pahono00 - Support for the Pacific/Honolulu time zone

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
        [ [1,1,2,0,0,0],[1,1,1,13,28,34],'-10:31:26',[-10,-31,-26],
          'LMT',0,[1896,1,13,22,31,25],[1896,1,13,11,59,59],
          '0001010200:00:00','0001010113:28:34','1896011322:31:25','1896011311:59:59' ],
     ],
   1896 =>
     [
        [ [1896,1,13,22,31,26],[1896,1,13,12,1,26],'-10:30:00',[-10,-30,0],
          'HST',0,[1933,4,30,12,29,59],[1933,4,30,1,59,59],
          '1896011322:31:26','1896011312:01:26','1933043012:29:59','1933043001:59:59' ],
     ],
   1933 =>
     [
        [ [1933,4,30,12,30,0],[1933,4,30,3,0,0],'-09:30:00',[-9,-30,0],
          'HDT',1,[1933,5,21,21,29,59],[1933,5,21,11,59,59],
          '1933043012:30:00','1933043003:00:00','1933052121:29:59','1933052111:59:59' ],
        [ [1933,5,21,21,30,0],[1933,5,21,11,0,0],'-10:30:00',[-10,-30,0],
          'HST',0,[1942,2,9,12,29,59],[1942,2,9,1,59,59],
          '1933052121:30:00','1933052111:00:00','1942020912:29:59','1942020901:59:59' ],
     ],
   1942 =>
     [
        [ [1942,2,9,12,30,0],[1942,2,9,3,0,0],'-09:30:00',[-9,-30,0],
          'HDT',1,[1945,9,30,11,29,59],[1945,9,30,1,59,59],
          '1942020912:30:00','1942020903:00:00','1945093011:29:59','1945093001:59:59' ],
     ],
   1945 =>
     [
        [ [1945,9,30,11,30,0],[1945,9,30,1,0,0],'-10:30:00',[-10,-30,0],
          'HST',0,[1947,6,8,12,29,59],[1947,6,8,1,59,59],
          '1945093011:30:00','1945093001:00:00','1947060812:29:59','1947060801:59:59' ],
     ],
   1947 =>
     [
        [ [1947,6,8,12,30,0],[1947,6,8,2,30,0],'-10:00:00',[-10,0,0],
          'HST',0,[9999,12,31,0,0,0],[9999,12,30,14,0,0],
          '1947060812:30:00','1947060802:30:00','9999123100:00:00','9999123014:00:00' ],
     ],
);

%LastRule      = (
);

1;

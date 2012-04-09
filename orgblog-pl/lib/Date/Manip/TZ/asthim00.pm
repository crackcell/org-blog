package Date::Manip::TZ::asthim00;
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

Date::Manip::TZ::asthim00 - Support for the Asia/Thimphu time zone

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
        [ [1,1,2,0,0,0],[1,1,2,5,58,36],'+05:58:36',[5,58,36],
          'LMT',0,[1947,8,14,18,1,23],[1947,8,14,23,59,59],
          '0001010200:00:00','0001010205:58:36','1947081418:01:23','1947081423:59:59' ],
     ],
   1947 =>
     [
        [ [1947,8,14,18,1,24],[1947,8,14,23,31,24],'+05:30:00',[5,30,0],
          'IST',0,[1987,9,30,18,29,59],[1987,9,30,23,59,59],
          '1947081418:01:24','1947081423:31:24','1987093018:29:59','1987093023:59:59' ],
     ],
   1987 =>
     [
        [ [1987,9,30,18,30,0],[1987,10,1,0,30,0],'+06:00:00',[6,0,0],
          'BTT',0,[9999,12,31,0,0,0],[9999,12,31,6,0,0],
          '1987093018:30:00','1987100100:30:00','9999123100:00:00','9999123106:00:00' ],
     ],
);

%LastRule      = (
);

1;

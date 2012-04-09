package Date::Manip::TZ::atsout00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:32 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::atsout00 - Support for the Atlantic/South_Georgia time zone

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
        [ [1,1,2,0,0,0],[1,1,1,21,33,52],'-02:26:08',[-2,-26,-8],
          'LMT',0,[1890,1,1,2,26,7],[1889,12,31,23,59,59],
          '0001010200:00:00','0001010121:33:52','1890010102:26:07','1889123123:59:59' ],
     ],
   1890 =>
     [
        [ [1890,1,1,2,26,8],[1890,1,1,0,26,8],'-02:00:00',[-2,0,0],
          'GST',0,[9999,12,31,0,0,0],[9999,12,30,22,0,0],
          '1890010102:26:08','1890010100:26:08','9999123100:00:00','9999123022:00:00' ],
     ],
);

%LastRule      = (
);

1;
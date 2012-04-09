package Date::Manip::TZ::aflubu00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:31 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::aflubu00 - Support for the Africa/Lubumbashi time zone

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
        [ [1,1,2,0,0,0],[1,1,2,1,49,52],'+01:49:52',[1,49,52],
          'LMT',0,[1897,11,8,22,10,7],[1897,11,8,23,59,59],
          '0001010200:00:00','0001010201:49:52','1897110822:10:07','1897110823:59:59' ],
     ],
   1897 =>
     [
        [ [1897,11,8,22,10,8],[1897,11,9,0,10,8],'+02:00:00',[2,0,0],
          'CAT',0,[9999,12,31,0,0,0],[9999,12,31,2,0,0],
          '1897110822:10:08','1897110900:10:08','9999123100:00:00','9999123102:00:00' ],
     ],
);

%LastRule      = (
);

1;

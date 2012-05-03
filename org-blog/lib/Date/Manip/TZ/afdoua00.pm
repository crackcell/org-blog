package Date::Manip::TZ::afdoua00;
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

Date::Manip::TZ::afdoua00 - Support for the Africa/Douala time zone

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
        [ [1,1,2,0,0,0],[1,1,2,0,38,48],'+00:38:48',[0,38,48],
          'LMT',0,[1911,12,31,23,21,11],[1911,12,31,23,59,59],
          '0001010200:00:00','0001010200:38:48','1911123123:21:11','1911123123:59:59' ],
     ],
   1911 =>
     [
        [ [1911,12,31,23,21,12],[1912,1,1,0,21,12],'+01:00:00',[1,0,0],
          'WAT',0,[9999,12,31,0,0,0],[9999,12,31,1,0,0],
          '1911123123:21:12','1912010100:21:12','9999123100:00:00','9999123101:00:00' ],
     ],
);

%LastRule      = (
);

1;

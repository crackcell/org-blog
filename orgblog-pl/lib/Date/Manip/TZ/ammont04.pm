package Date::Manip::TZ::ammont04;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:37 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::ammont04 - Support for the America/Montserrat time zone

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
        [ [1,1,2,0,0,0],[1,1,1,19,51,8],'-04:08:52',[-4,-8,-52],
          'LMT',0,[1911,7,1,4,9,51],[1911,7,1,0,0,59],
          '0001010200:00:00','0001010119:51:08','1911070104:09:51','1911070100:00:59' ],
     ],
   1911 =>
     [
        [ [1911,7,1,4,9,52],[1911,7,1,0,9,52],'-04:00:00',[-4,0,0],
          'AST',0,[9999,12,31,0,0,0],[9999,12,30,20,0,0],
          '1911070104:09:52','1911070100:09:52','9999123100:00:00','9999123020:00:00' ],
     ],
);

%LastRule      = (
);

1;

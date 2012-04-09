package Date::Manip::TZ::afsao_00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:27 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::afsao_00 - Support for the Africa/Sao_Tome time zone

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
        [ [1,1,2,0,0,0],[1,1,2,0,26,56],'+00:26:56',[0,26,56],
          'LMT',0,[1883,12,31,23,33,3],[1883,12,31,23,59,59],
          '0001010200:00:00','0001010200:26:56','1883123123:33:03','1883123123:59:59' ],
     ],
   1883 =>
     [
        [ [1883,12,31,23,33,4],[1883,12,31,22,56,32],'-00:36:32',[0,-36,-32],
          'LMT',0,[1912,1,1,0,36,31],[1911,12,31,23,59,59],
          '1883123123:33:04','1883123122:56:32','1912010100:36:31','1911123123:59:59' ],
     ],
   1912 =>
     [
        [ [1912,1,1,0,36,32],[1912,1,1,0,36,32],'+00:00:00',[0,0,0],
          'GMT',0,[9999,12,31,0,0,0],[9999,12,31,0,0,0],
          '1912010100:36:32','1912010100:36:32','9999123100:00:00','9999123100:00:00' ],
     ],
);

%LastRule      = (
);

1;

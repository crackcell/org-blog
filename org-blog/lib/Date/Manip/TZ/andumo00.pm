package Date::Manip::TZ::andumo00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:28 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::andumo00 - Support for the Antarctica/DumontDUrville time zone

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
        [ [1,1,2,0,0,0],[1,1,2,0,0,0],'+00:00:00',[0,0,0],
          'zzz',0,[1946,12,31,23,59,59],[1946,12,31,23,59,59],
          '0001010200:00:00','0001010200:00:00','1946123123:59:59','1946123123:59:59' ],
     ],
   1947 =>
     [
        [ [1947,1,1,0,0,0],[1947,1,1,10,0,0],'+10:00:00',[10,0,0],
          'PMT',0,[1952,1,13,13,59,59],[1952,1,13,23,59,59],
          '1947010100:00:00','1947010110:00:00','1952011313:59:59','1952011323:59:59' ],
     ],
   1952 =>
     [
        [ [1952,1,13,14,0,0],[1952,1,13,14,0,0],'+00:00:00',[0,0,0],
          'zzz',0,[1956,10,31,23,59,59],[1956,10,31,23,59,59],
          '1952011314:00:00','1952011314:00:00','1956103123:59:59','1956103123:59:59' ],
     ],
   1956 =>
     [
        [ [1956,11,1,0,0,0],[1956,11,1,10,0,0],'+10:00:00',[10,0,0],
          'DDUT',0,[9999,12,31,0,0,0],[9999,12,31,10,0,0],
          '1956110100:00:00','1956110110:00:00','9999123100:00:00','9999123110:00:00' ],
     ],
);

%LastRule      = (
);

1;

package Date::Manip::TZ::askuwa00;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:26 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::TZ::askuwa00 - Support for the Asia/Kuwait time zone

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
        [ [1,1,2,0,0,0],[1,1,2,3,11,56],'+03:11:56',[3,11,56],
          'LMT',0,[1949,12,31,20,48,3],[1949,12,31,23,59,59],
          '0001010200:00:00','0001010203:11:56','1949123120:48:03','1949123123:59:59' ],
     ],
   1949 =>
     [
        [ [1949,12,31,20,48,4],[1949,12,31,23,48,4],'+03:00:00',[3,0,0],
          'AST',0,[9999,12,31,0,0,0],[9999,12,31,3,0,0],
          '1949123120:48:04','1949123123:48:04','9999123100:00:00','9999123103:00:00' ],
     ],
);

%LastRule      = (
);

1;

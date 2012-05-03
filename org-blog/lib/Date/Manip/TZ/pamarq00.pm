package Date::Manip::TZ::pamarq00;
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

Date::Manip::TZ::pamarq00 - Support for the Pacific/Marquesas time zone

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
        [ [1,1,2,0,0,0],[1,1,1,14,42,0],'-09:18:00',[-9,-18,0],
          'LMT',0,[1912,10,1,9,17,59],[1912,9,30,23,59,59],
          '0001010200:00:00','0001010114:42:00','1912100109:17:59','1912093023:59:59' ],
     ],
   1912 =>
     [
        [ [1912,10,1,9,18,0],[1912,9,30,23,48,0],'-09:30:00',[-9,-30,0],
          'MART',0,[9999,12,31,0,0,0],[9999,12,30,14,30,0],
          '1912100109:18:00','1912093023:48:00','9999123100:00:00','9999123014:30:00' ],
     ],
);

%LastRule      = (
);

1;

package Date::Manip::TZ::inmaur00;
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

Date::Manip::TZ::inmaur00 - Support for the Indian/Mauritius time zone

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
        [ [1,1,2,0,0,0],[1,1,2,3,50,0],'+03:50:00',[3,50,0],
          'LMT',0,[1906,12,31,20,9,59],[1906,12,31,23,59,59],
          '0001010200:00:00','0001010203:50:00','1906123120:09:59','1906123123:59:59' ],
     ],
   1906 =>
     [
        [ [1906,12,31,20,10,0],[1907,1,1,0,10,0],'+04:00:00',[4,0,0],
          'MUT',0,[1982,10,9,19,59,59],[1982,10,9,23,59,59],
          '1906123120:10:00','1907010100:10:00','1982100919:59:59','1982100923:59:59' ],
     ],
   1982 =>
     [
        [ [1982,10,9,20,0,0],[1982,10,10,1,0,0],'+05:00:00',[5,0,0],
          'MUST',1,[1983,3,20,18,59,59],[1983,3,20,23,59,59],
          '1982100920:00:00','1982101001:00:00','1983032018:59:59','1983032023:59:59' ],
     ],
   1983 =>
     [
        [ [1983,3,20,19,0,0],[1983,3,20,23,0,0],'+04:00:00',[4,0,0],
          'MUT',0,[2008,10,25,21,59,59],[2008,10,26,1,59,59],
          '1983032019:00:00','1983032023:00:00','2008102521:59:59','2008102601:59:59' ],
     ],
   2008 =>
     [
        [ [2008,10,25,22,0,0],[2008,10,26,3,0,0],'+05:00:00',[5,0,0],
          'MUST',1,[2009,3,28,20,59,59],[2009,3,29,1,59,59],
          '2008102522:00:00','2008102603:00:00','2009032820:59:59','2009032901:59:59' ],
     ],
   2009 =>
     [
        [ [2009,3,28,21,0,0],[2009,3,29,1,0,0],'+04:00:00',[4,0,0],
          'MUT',0,[9999,12,31,0,0,0],[9999,12,31,4,0,0],
          '2009032821:00:00','2009032901:00:00','9999123100:00:00','9999123104:00:00' ],
     ],
);

%LastRule      = (
);

1;

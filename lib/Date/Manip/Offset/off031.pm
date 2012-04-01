package Date::Manip::Offset::off031;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:55 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::Offset::off031 - Support for the +01:00:00 offset

=head1 SYNPOSIS

This module contains data from the Olsen database for the offset. It
is not intended to be used directly (other Date::Manip modules will
load it as needed).

=cut

use strict;
use warnings;
require 5.010000;

our ($VERSION);
$VERSION='6.31';
END { undef $VERSION; }

our ($Offset,%Offset);
END {
   undef $Offset;
   undef %Offset;
}

$Offset        = '+01:00:00';

%Offset        = (
   0 => [
      'cet',
      'met',
      'europe/belgrade',
      'europe/budapest',
      'europe/prague',
      'europe/berlin',
      'europe/copenhagen',
      'europe/malta',
      'europe/rome',
      'europe/vienna',
      'europe/oslo',
      'europe/vaduz',
      'europe/zurich',
      'africa/kinshasa',
      'europe/stockholm',
      'europe/luxembourg',
      'africa/bangui',
      'africa/brazzaville',
      'africa/douala',
      'africa/libreville',
      'africa/luanda',
      'africa/ndjamena',
      'africa/tunis',
      'europe/tirane',
      'europe/brussels',
      'europe/warsaw',
      'africa/lagos',
      'africa/porto-novo',
      'africa/algiers',
      'europe/amsterdam',
      'europe/paris',
      'europe/monaco',
      'europe/andorra',
      'europe/madrid',
      'europe/gibraltar',
      'africa/niamey',
      'africa/malabo',
      'africa/ceuta',
      'africa/windhoek',
      'etc/gmt+1',
      'n',
      'europe/vilnius',
      'africa/tripoli',
      'europe/lisbon',
      'europe/uzhgorod',
      'africa/casablanca',
      'europe/dublin',
      'europe/london',
      'europe/sofia',
      'europe/kaliningrad',
      'europe/tallinn',
      'europe/athens',
      'europe/chisinau',
      'europe/minsk',
      'europe/riga',
      'europe/simferopol',
      'europe/kiev',
      'europe/zaporozhye',
      ],
   1 => [
      'wet',
      'europe/lisbon',
      'europe/london',
      'europe/dublin',
      'atlantic/madeira',
      'atlantic/canary',
      'atlantic/faroe',
      'africa/casablanca',
      'africa/algiers',
      'africa/ceuta',
      'africa/freetown',
      'europe/gibraltar',
      'europe/madrid',
      'europe/monaco',
      'europe/paris',
      'europe/brussels',
      'europe/luxembourg',
      ],
);

1;

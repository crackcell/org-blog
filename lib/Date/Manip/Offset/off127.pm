package Date::Manip::Offset::off127;
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

Date::Manip::Offset::off127 - Support for the +04:00:00 offset

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

$Offset        = '+04:00:00';

%Offset        = (
   0 => [
      'indian/mauritius',
      'indian/mahe',
      'indian/reunion',
      'asia/muscat',
      'asia/dubai',
      'europe/samara',
      'europe/volgograd',
      'asia/yerevan',
      'asia/baku',
      'etc/gmt+4',
      'asia/aqtau',
      'asia/oral',
      'asia/tbilisi',
      'asia/yekaterinburg',
      'asia/ashgabat',
      'asia/tehran',
      'asia/bahrain',
      'asia/qatar',
      'asia/kabul',
      'asia/qyzylorda',
      'asia/samarkand',
      'asia/aqtobe',
      'q',
      'europe/moscow',
      ],
   1 => [
      'europe/moscow',
      'europe/samara',
      'europe/volgograd',
      'asia/baghdad',
      'asia/tbilisi',
      'europe/simferopol',
      'asia/yerevan',
      'asia/baku',
      'europe/kaliningrad',
      'europe/vilnius',
      'europe/zaporozhye',
      'europe/chisinau',
      'europe/kiev',
      'europe/minsk',
      'europe/uzhgorod',
      'europe/riga',
      'europe/tallinn',
      'europe/istanbul',
      'indian/antananarivo',
      'asia/jerusalem',
      ],
);

1;

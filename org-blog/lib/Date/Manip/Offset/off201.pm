package Date::Manip::Offset::off201;
# Copyright (c) 2008-2012 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Feb 27 11:41:56 EST 2012
#    Data version: tzdata2011n
#    Code version: tzcode2011i

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.orgtz

=pod

=head1 NAME

Date::Manip::Offset::off201 - Support for the +09:00:00 offset

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

$Offset        = '+09:00:00';

%Offset        = (
   0 => [
      'asia/tokyo',
      'pacific/palau',
      'asia/pyongyang',
      'asia/seoul',
      'asia/jayapura',
      'asia/dili',
      'asia/irkutsk',
      'asia/yakutsk',
      'etc/gmt+9',
      'v',
      'asia/choibalsan',
      'asia/vladivostok',
      'pacific/saipan',
      'asia/harbin',
      'asia/sakhalin',
      'asia/hong_kong',
      'asia/jakarta',
      'asia/kuala_lumpur',
      'asia/kuching',
      'asia/makassar',
      'asia/pontianak',
      'asia/rangoon',
      'asia/singapore',
      'asia/manila',
      'pacific/nauru',
      'australia/adelaide',
      'australia/darwin',
      'australia/broken_hill',
      ],
   1 => [
      'asia/irkutsk',
      'australia/perth',
      'asia/ulaanbaatar',
      'asia/shanghai',
      'asia/chongqing',
      'asia/harbin',
      'asia/kashgar',
      'asia/urumqi',
      'asia/yakutsk',
      'asia/macau',
      'asia/hong_kong',
      'asia/taipei',
      'asia/manila',
      'asia/seoul',
      ],
);

1;

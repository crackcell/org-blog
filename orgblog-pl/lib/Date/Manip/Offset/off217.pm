package Date::Manip::Offset::off217;
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

Date::Manip::Offset::off217 - Support for the +10:00:00 offset

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

$Offset        = '+10:00:00';

%Offset        = (
   0 => [
      'australia/melbourne',
      'australia/brisbane',
      'australia/lindeman',
      'pacific/port_moresby',
      'australia/currie',
      'australia/hobart',
      'australia/sydney',
      'pacific/chuuk',
      'pacific/guam',
      'pacific/saipan',
      'asia/yakutsk',
      'asia/vladivostok',
      'asia/sakhalin',
      'etc/gmt+10',
      'w',
      'antarctica/dumontdurville',
      'asia/magadan',
      'australia/lord_howe',
      'australia/broken_hill',
      'antarctica/macquarie',
      ],
   1 => [
      'asia/yakutsk',
      'asia/choibalsan',
      'asia/vladivostok',
      'asia/seoul',
      'asia/tokyo',
      ],
);

1;

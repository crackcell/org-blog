package Date::Manip::Offset::off434;
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

Date::Manip::Offset::off434 - Support for the -07:00:00 offset

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

$Offset        = '-07:00:00';

%Offset        = (
   0 => [
      'america/denver',
      'america/phoenix',
      'america/edmonton',
      'america/cambridge_bay',
      'america/chihuahua',
      'america/hermosillo',
      'america/mazatlan',
      'america/ojinaga',
      'america/boise',
      'america/yellowknife',
      'america/dawson_creek',
      'america/inuvik',
      'etc/gmt-7',
      'g',
      'america/north_dakota/beulah',
      'america/bahia_banderas',
      'america/north_dakota/new_salem',
      'america/north_dakota/center',
      'pacific/easter',
      'america/swift_current',
      'america/regina',
      'america/mexico_city',
      'america/santa_isabel',
      'america/tijuana',
      ],
   1 => [
      'america/los_angeles',
      'america/vancouver',
      'america/santa_isabel',
      'america/tijuana',
      'america/dawson',
      'america/whitehorse',
      'america/juneau',
      'america/dawson_creek',
      'america/boise',
      'america/metlakatla',
      'america/sitka',
      ],
);

1;

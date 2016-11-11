#!/usr/bin/perl
# debhelper sequence file for dh-flabbergast scripts

use warnings;
use strict;
use Debian::Debhelper::Dh_Lib;

insert_before("dh_installdeb", "dh_flabbergast");

1;

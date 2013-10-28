#!/usr/bin/perl

use strict;
use warnings;

my $s = "";

while (<>) {
	$s .= $_;

	while (
		$s =~ s/lll/r/ || 
		$s =~ s/rrr/l/ ||
		$s =~ s/lr|rl//
	) {}
}

my $h = 270;

for (split('', $s)) {
	if ($_ eq "r") {
		$h = ($h + 90) % 360;
	} elsif ($_ eq "l") {
		$h = ($h - 90) % 360;
	}
}

print "final heading: $h\n"

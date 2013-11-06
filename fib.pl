#!/usr/bin/perl
use strict;
use warnings;

my $count = $ARGV[0];

my $this = 1;
my $next = 1;
my $last = 1;
my $i = 0;



while ($i<$count) {

	print "$this\n";
	$next = $this + $last;
	$last = $this;
	$this = $next;
	$i++;
}



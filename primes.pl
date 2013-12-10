#!/usr/bin/perl
use strict;
use warnings;

my $count = $ARGV[0];
my $isPrime = 0;
my $this = 1;
my $next = 1;
my $last = 1;
my $i = 0;

sub checkPrime {
    my $num = $_[0];
    if ($num % 
    return($num);
}

while ($i<$count) {

	$isPrime = checkPrime($this);

	if ($isPrime) {

		print "$isPrime\n";
	}

	$next = $this + $last;
	$last = $this;
	$this = $next;
	$i++;
}


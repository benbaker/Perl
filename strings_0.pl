#!/usr/bin/perl
use strict;
use warnings;

$passage = "I want to take this opportunity to welcome you. ";

my @words = split(/\s+/, $line);

my $i=0;

foreach my $word (@words) {
  $word =~s/[[:punct:]]//g;
  print $word . $i++;
}


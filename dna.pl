#!/usr/bin/perl
use strict;
use warnings;

# Hard code the string
my $sequence = "TATAGGGCATTCTGATCTCTAGTACCTGGGTTCTAGCAGATGCCTGACCTACAGCCCTGTGTTCAGCCTGGTCATTCCAGCTCTCAGAGAGACCTTGCCN";

# Patter to find
my $str="TCAG";

# Initial offset value
my $offset = 0;

# Initial index
my $result = index($sequence, $str, $offset);

# Loop and increase index to print all occurences.
while ($result != -1) {

  print "Found $str at $result\n";
  $offset = $result + 1;
  $result = index($sequence, $str, $offset);


} 



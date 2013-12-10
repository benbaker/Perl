#!/usr/bin/perl
use strict;
use warnings;

# Hard code the string
my $passage = "I want to take this opportunity to welcome you.";

# Split array on white space from string
my @words = split(/\s+/, $passage);

my $i=0;

# walk the array and paint word : index
foreach my $word (@words) {
  
    #Get rid of punctuation and print
    $word =~s/[[:punct:]]//g;
    print $word . " " . $i++ . "\n" ;

}

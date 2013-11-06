#!/usr/bin/perl
use strict;
use warnings;

# Hard code the string
my $passage = "I want to take this opportunity to welcome you to Mizzou for Spring Semester 2013.  For some of you, this will constitute a new beginning, For others, it will be one of many new starts on decades of growth, new experiences for education and service, and new friendships and career opportunities during decades of dedicated service.";

# Split array on white space from string
my @words = split(/\s+/, $passage);

my $i=0;

# walk the array and paint word : index
foreach my $word (@words) {
  
    #Get rid of punctuation and print
    $word =~s/[[:punct:]]//g;
    print $word . " " . $i++ . "\n" ;

}

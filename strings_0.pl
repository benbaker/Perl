#!/usr/bin/perl
use strict;
use warnings;

$passage = "I want to take this opportunity to welcome you to Mizzou for Spring Semester 2013.  For some of you, this will constitute a new beginning, For others, it will be one of many new starts on decades of growth, new experiences for education and service, and new friendships and career opportunities during decades of dedicated service.";

my @words = split(/\s+/, $line);


my $i=0;

foreach my $word (@words) {

  $word =~s/[[:punct:]]//g;
  print $word . $i++;

}

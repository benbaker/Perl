#!/usr/bin/perl
use strict;
use warnings;

print "\n";
my %people;
my $length = @ARGV;
my $i=0;

if (!$length) { print "Need arguments!\n"; exit}

# Make hash form ARG array
while ( exists $ARGV[$i] ) {
  $people{$ARGV[$i]} = $ARGV[$i+1];
  $i += 2;
}


# Find lowest weight
my $lowest;
my $lowestPerson;

foreach my $person (keys %people) {

  print "$person : $people{$person}";
  print "\n";

  if (!$lowest || $lowest > $people{$person}) {
    $lowest       = $people{$person};
    $lowestPerson = $person;
  }
}

print "\nThe lowest is $lowestPerson with $lowest.\n";

# Search by weight
print "Enter a weight to search: ";
my $searchWeight = <STDIN>;
my $found = 0;

# Show matches
foreach my $person (keys %people) {
  if ($searchWeight == $people{$person}) {
    print "$person weighs $searchWeight";
    $found =1;
  }
}

# Throw error on no matches
if (!$found) { print "Sorry, no one matches your input.\n";}


# Search by char
$found = 0;
print "Enter a search character: ";
my $searchChar = <STDIN>;
chomp $searchChar;

foreach my $person (keys %people) {
  if (index($person, $searchChar) > 0 ) {
    print "$person : $people{$person} \n";
    $found = 1;
  }
}

if (!$found) { print "Sorry, no one matches your input.\n"; }

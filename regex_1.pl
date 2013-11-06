#!/usr/bin/perl
use strict;
use warnings;

# This program uses regular expressions to interrogate and manipulate strings.

my $q = 1;

sub nxt {
  print "\n$q\t";
  $q++;
}


# Question 1
nxt;
my $seq = "AGTCCCCTTTTTGGTCAAAACGTTCCAAATTT";
print "Bingo!" if $seq =~ /GGTAA/;



# Question 2
nxt;
my $str = "The documentary joplin, missouri is a story of distress, survival, recovery and hope.";
print "Bingo!" if $str =~ /(j|J)oplin/;



# Question 3
nxt;
$str =~ s/joplin/Joplin/g;



# Question 4
nxt;

my $info = "37784DNA-SLIDE345667 IP:234.234.12.1 Name: James Bond";
print "Bingo!" if $info =~ /(234){0,3}/;


# Question 5

nxt;
my $speech = "I know this is right, but I am really not quite sure whether this is right or not. I don't know what I know, unless I know what I don't know. I don't know what I don't know, that's why I don't know what I know";

my $alert = "I know what happened between 1 and 3 times";

print $alert if $speech =~ /(I know){1,3}/;



# Question 6
nxt;

$speech =~ s/I know/\.\.\./g;
print $speech;

print "\n";

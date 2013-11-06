#!/usr/bin/perl
use strict;
use warnings;

print "This is a automatic answering machine.\n";

print "What is your name please?\n";

my $name = "Ben";

print "Student: My name is ", $name , "\n";

print "Hello $name\n";

 

print "How can I help you today?\n";

print "Student: Am I young?\n";

print "How old are you?\n";

my $age  = 20;

print "Student: I am $age\n";

if ($age < 18) {

               print "You are really young!\n";

} elsif ($age >= 18 && $age < 60) {

               print "At $age years old. You are still young!\n";

} else {

               print "Are you serious?\n";

}

 

print "Ok. Is there anything else?\n";

print "Student: What is my weight in kilograms?\n";

print "Give me your weight in pounds.\n";

my $weight = 132;

print 'Student: I am '. $weight ." pounds\n";

my $factor = 2.2;

$weight = $weight * $factor;

print "You are $weight kilograms\n";

print "Ok. is ther anything else?\n";

print "Student: That is all.\n";

print "Thank you! Have a great day!\n";

#!/usr/bin/perl 
use strict;
use warnings;

my $file1 = "test1.txt";
my $file2 = "test2.txt";

# copy the file



# use the copied file to get array
open (FILEA, $file1);
my @lines = <FILEA>;
close(FILEA);  

print "@lines";


# Q2
# Extract "go" terms into gos.txt

open(GOFILE, ">>gos.txt");

#print go terms into gos.txt
foreach my $line (@lines) { 

  my @goOnly = split(' ', $line);

  foreach my $go (@goOnly) {

    if ($go =~ /GO:/) { 

      $go =~ s/;//g;

      print GOFILE $go."\n"; 
    } 
  }
}


# Q3
# Read and prnt out the contents of the wd
# Print only name of subfolder, not contents

use Cwd;
my $dir = getcwd;

opendir (DIR, $dir) or die $!;
my @files = readdir(DIR);
closedir(DIR);

foreach my $file (@files) {
  print $file."\n";
}

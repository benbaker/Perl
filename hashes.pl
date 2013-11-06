#!/usr/bin/perl 
use strict;
use warnings;

my $file1 = "test1.txt";
my $file2 = "test2.txt";


# Job 1
# Print all the stuff on one line

	# read file, put in array
	open (FILEA, $file1);
	my @lines = <FILEA>;
	close(FILEA);  


	# remove new lines from array
	foreach my $line (@lines) {

		$line =~ chomp($line);


	}

	print "@lines";



# Job 2
# word count in reverse

my @words;

foreach my $line (@lines) {

push(@words, split(/\s+/, $line));


}


print "@words";



# Create hash named %counts key:'word, value:'occorunce count'
my %counts;

foreach my $word (@words) {

  $word =~s/[[:punct:]]//g;
  if ($word) { $counts{$word}++;}

}

# Print 'Word: count' for every word on new line
print "\n\nWord count unsorted:\n";
my @keys = keys(%counts);

foreach my $key (@keys) {

   print "$key: $counts{$key} \n";

}

# Print 'Word: count' sorted
print "\nWord count sorted:\n";
foreach my $key ( sort { $counts{$a} <=> $counts{$b} } keys %counts) {

  print "$key: $counts{$key}\n";

}


# Job 4

my @capsLines;

foreach my $line (@lines) {


	my $capsLine = $line;
	$capsLine =~ s/([\w']+)/\u\L$1/g;
	push(@capsLines, $capsLine);


}


open(CAPSFILE, ">>text1_cap.txt");
print CAPSFILE @capsLines;
close(CAPSFILE);



# Job 5


print "Enter word to find:";

my $word1 = <>;

print "Enter word to replace it with:";

my $word2 = <>;

my @replaced;

foreach my $line (@lines) {

	my $replaceLine = $line;
	$replaceLine =~ s/$word1/$word2/g;

	push(@replaced, $replaceLine);


}

open(REPLACEFILE, ">>test1_replaced.txt");
print REPLACEFILE @replaced;
close(REPLACEFILE);


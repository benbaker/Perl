#!/usr/bin/perl
use strict;
use warnings;

my $passage = "Moving from the student to the faculty ranks, Dr. Deaton spent the next six years as an assistant and associate professor of agricultural economics and rural sociology at the University of Tennessee. During this time at Tennessee, he was appointed as staff director of the Special Task Force on Food for Peace for the U.S. Department of Agriculture in Washington, D.C. In 1978, Dr. Deaton took a professorship position at Virginia Polytechnic Institute and State University in the Department of Agricultural Economics, where he also served as coordinator of the rural development research and extension program.";

# Regex to the rescue!
$passage =~ s/ he/ Dr. Deaton/g;
$passage =~ s/ He/ Dr. Deaton/g;

print $passage . "\n";


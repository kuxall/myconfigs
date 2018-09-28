#!/usr/bin/perl

$line = $ARGV[0];
(defined $line) || ($line = 1);
$count = 1;
while(<STDIN>) {
	print if $line != $count;
	$count ++;
}

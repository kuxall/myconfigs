#!/usr/bin/perl

while ( <STDIN> ) {
	print $_ unless /\A(\s+)\z/;
}

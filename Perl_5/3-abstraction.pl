#!/usr/bin/perl

use strict;
use v5.10;

sub square {
	return shift() ** 2;
	# braces for perl to know that shift is called without args
}
sub cube {
	return shift() ** 3;
}
say 10 ** 2;
say square(10);

say 10 ** 3;
say cube 10; # demonstrating that no-braces feature again

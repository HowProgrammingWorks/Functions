#!/usr/bin/perl

use strict;
use v5.10;

# We can do modifiable return!
my $val;

sub lval: lvalue {
	return $val;
};

lval() = 5;
say lval();
lval() = 7;
say lval();

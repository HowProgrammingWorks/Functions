#!/usr/bin/perl

use strict;
use v5.10;
# in original repo this file is named "context"
# i take the responsibility to rename it to "scopes"
# because of two reasons:
# 1. context is name of entirely different principle
# 2. scope is just more logical :)


my @cities = ("Athens", "Roma", "London", "Beijing", "Kiev", "Riga");

# we pass an array to function, @_ represents it, and shift
# starts getting values from array.
# if we need to pass multiple arrays, or array and variable - we
# need to use references (not talking about them here)
# also, its nearly always better to use references, in terms of memory usage.
my $f = sub { return scalar @_; };

sub f2 {
	my @cities = ("Athens", "Roma");
	my $f = sub {return uc shift}; # uc stands for uppercase
	say @cities;
	# here we map by passing each element to function via $_
	say map($f->($_), @cities);
	{
		my $f = sub {return lc shift};
		say @cities;
		# actually we can call any function with or without braces
		say map $f->($_), @cities;
	}
	{
		my @cities = ("London", "Beijing", "Kiev");
		say @cities;
		say map $f->($_), @cities;
	}
}

f2();

say @cities;
say $f->(@cities);

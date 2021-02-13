#!/usr/bin/perl

use strict;
use v5.10;

# everytime shift is called inside a function without array passed to it
# it returns next argument
# note that shift is a function that awaits arguments
sub inc1 {
	return 1 + shift;
}


# @_ is an array of arguments. Dont do $var = _@;
# because context of this operation is scalar
# and any array in scalar context represents its length.
# Not talking about context here.
# also note that @_ is immutable
sub inc2 {
	return @_[0] + 1;
}

# perl functions always return value.
# Explicitly via return or implicitly last calculated value.
# Thus, its better to use return.
# note that $arg++ in perl is actually computed after return
# so mind using prefix in such operations
sub inc3 {
	my $arg = shift;
	$arg++;
}

# we declare what do we wait on input, an then do
# fancy argument retrieval
# really the right way of doing this
sub sum($$) {
	my ($a, $b) = (shift, shift);
	return $a + $b;
}

# A lambda function! Also, note how we get args
my $max = sub {
	my ($a, $b) = @_;
	return $a > $b ? $a : $b;
};

say inc1(2); # returns 3
say inc2(2); # returns 3
say inc3(2); # returns 2 (look in comments near function definition)
say sum(1, 2); # returns 3
# say sum(1, 2, 3); # produces an error. Uncomment and try it!
say $max->(8, 10); # returns 10, note how we make function call

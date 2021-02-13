#!/usr/bin/perl

use strict;
use v5.10;

# there is no new Function syntax in perl, but there is a fancy thing
# that is worth looking at
# KIDS DO NOT TRY THIS AT HOME

my $func = 'sub ttt($$) {($a, $b) = (shift, shift); return $a+$b;}';

my $res = (eval($func), ttt(1, 2));
say $res;

# fancy thing is that (, , , ) looks through all actions left to right and returns
# result of last
# Without braces it will go right to left

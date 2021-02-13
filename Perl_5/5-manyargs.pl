#!/usr/bin/perl

use strict;

use Data::Dumper;
# spread operator is not needed in perl
# because only way for us to get our params is through array
# but i'll show how to iterate through params

# ref gets us type of reference, \ creates reference


my $f1 = sub { print Dumper @_; };

$f1->(1, 2, 3);
print "\n";

sub f2 {
	my $arg;
	foreach $arg (@_) {
		print ref(\$arg) . " : " . Dumper($arg);
	}
}

f2($f1, 1, 'Marcus', {field => "value"});
print "\n";

# anonymous hash higner is automatically passed as a reference
# BUT unlike js arrays and hashes are defaultly passed not as arrays,
# if they arent anonymous
# here we try passing a real hash to a ref, just to show that not all hashes
# are references
my %hash;
print ref \%hash;

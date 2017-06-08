#!/usr/bin/perl

use strict;


package obj1;
sub new {
	my $class = shift;
	my $self = {
		max => sub ($$) {
			my ($a, $b) = (shift, shift);
			return $a > $b ? $a : $b;
		} # note that this method is not given $self in arguments
	};
	bless $self, $class; # this is better shown in next chapter
	return $self;
}
sub inc($) {
	my $self = shift; # we always get $self as a first argument to a method
	my $a = shift;
	return ++$a;
}
sub sum($$) {
	my $self = shift;
	my ($a, $b) = (shift, shift);
	return $a + $b;
}

# declarement of package is between package statements.
# so we need to explicitly declare main code
package main;

my $obj = new obj1();
print ref $obj;
print "\n";
print $obj->sum(1, 2) . "\n";
print $$obj{'max'}->(1, 2) . "\n";

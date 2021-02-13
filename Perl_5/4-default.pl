#!/usr/bin/perl

use strict;
use Data::Dumper;

# unless is equal to if not
# also note that we can type two ways:
# action if condition
# if (condition) action
# will assign a default only if undef comes as an arg, or there is no arg
sub unlessDef {
	my $a = shift;
	my $b = shift; $b = "Hello" unless defined $b;
	my $c = shift; $c = 5 unless defined $c;
	print Dumper {
		a => $a,
		b => $b,
		c => $c
	};
}
print "unlessDef\n";
unlessDef(1, 2, 3);
unlessDef(1, 2);
unlessDef(1);
unlessDef(1, 0);
# will assign a default if false is passed as a parameter
sub orDef {
	my $a = shift;
	my $b = shift || "Hello";
	my $c = shift || 5;
	print Dumper {
		a => $a,
		b => $b,
		c => $c
	}; # prints hash
}

print "orDef\n";
orDef(1, 2, 3);
orDef(1, 2);
orDef(1);
orDef(1, 0);

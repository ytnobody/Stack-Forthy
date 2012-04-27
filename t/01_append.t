use strict;
use Test::More;
use Stack::Forthy;

my $s = Stack::Forthy->new;

diag explain [ $s->process( '1 2 + 4 * .' ) ];

ok 1;

done_testing;

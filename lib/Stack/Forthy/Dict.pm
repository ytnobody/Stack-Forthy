package Stack::Forthy::Dict;

use strict;

our $DICT = {};

sub word ($&) {
    my ( $word, $code ) = @_;
    $DICT->{$word} = $code;
}

word '.' => sub {
    my $s = shift;
    return shift @$s;
};

for my $w qw( + - / * ) {
    word $w => sub { 
        my $s = shift;
        push @$s, eval( do{ shift @$s }. $w. do{ shift @$s } );
        return
    };
}

$DICT;

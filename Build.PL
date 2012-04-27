use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Stack::Forthy',
    license             => 'perl',
    dist_author         => 'satoshi azuma <ytnobody at gmail dot com>',
    dist_version_from   => 'lib/Stack/Forthy.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Stack-Forthy-*' ],
);

$builder->create_build_script();

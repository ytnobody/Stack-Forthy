use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Stack::Forthy',
    AUTHOR        => 'satoshi azuma <ytnobody at gmail dot com>>',
    VERSION_FROM  => 'lib/Stack/Forthy.pm',
    ABSTRACT_FROM => 'lib/Stack/Forthy.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Stack-Forthy-*' },
);


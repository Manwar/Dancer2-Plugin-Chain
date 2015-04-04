#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Dancer2::Plugin::Chain',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Dancer2/Plugin/Chain.pm',
    ABSTRACT_FROM      => 'lib/Dancer2/Plugin/Chain.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Dancer2'          => 0,
        'Dancer2::Plugin'  => 0,
        'Moo'              => 0,
        'namespace::clean' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Dancer2-Plugin-Chain-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/Manwar/Dancer2-Plugin-Chain.git',
                web  => 'https://github.com/Manwar/Dancer2-Plugin-Chain',
            },
        }})
     : ()
    ),
);
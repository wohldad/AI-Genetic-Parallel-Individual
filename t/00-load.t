#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'AI::Genetic::Parallel::Individual' ) || print "Bail out!\n";
}

diag( "Testing AI::Genetic::Parallel::Individual $AI::Genetic::Parallel::Individual::VERSION, Perl $], $^X" );

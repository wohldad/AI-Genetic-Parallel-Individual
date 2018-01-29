#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

use AI::Genetic::Parallel::Individual;

can_ok( 'AI::Genetic::Parallel::Individual', 'new', 'dna', 'fitness', 'elite' );

package Bencher::Scenario::TextTableTiny::Render;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

sub _make_table {
    my ($cols, $rows) = @_;
    my $res = [];
    push @$res, [];
    for (0..$cols-1) { $res->[0][$_] = "col" . ($_+1) }
    for my $row (1..$rows) {
        push @$res, [ map { "row$row.$_" } 1..$cols ];
    }
    $res;
}

our $scenario = {
    summary => "Benchmark Text::Table::Tiny's rendering speed",
    participants => [
        {
            module => 'Text::Table::Tiny',
            code_template => 'Text::Table::Tiny::table(rows=><table>, header_row=>1)',
        },
    ],
    datasets => [
        {name=>'tiny (1x1)'    , args => {table=>_make_table( 1, 1)},},
        {name=>'small (3x5)'   , args => {table=>_make_table( 3, 5)},},
        {name=>'wide (30x5)'   , args => {table=>_make_table(30, 5)},},
        {name=>'long (3x300)'  , args => {table=>_make_table( 3, 300)},},
        {name=>'large (30x300)', args => {table=>_make_table(30, 300)},},
    ],
};

1;
# ABSTRACT:

package Bencher::Scenario::TextTableTiny::Startup;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    module_startup => 1,
    modules => {
    },
    participants => [
        {module => 'Text::Table::Tiny'},
    ],
};

1;
# ABSTRACT:

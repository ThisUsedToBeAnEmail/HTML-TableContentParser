#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'HTML::TableContentParser' ) || print "Bail out!\n";
}

diag( "Testing HTML::TableContentParser $HTML::TableContentParser::VERSION, Perl $], $^X" );

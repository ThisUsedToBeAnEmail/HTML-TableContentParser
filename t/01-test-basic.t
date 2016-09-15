use strict;
use warnings;
use Test::More;
use Data::Dumper;
use Carp qw/croak/;

BEGIN {
    use_ok("HTML::TableContentParser");
}

my $file = 't/html/table.html';

open ( my $fh, '<', $file ) or croak "could not open file: $file"; 
my $html = do { local $/; <$fh> };
close $fh;

my $parser = HTML::TableContentParser->new();
warn Dumper $parser;
my $tables = $parser->parse($html);

warn Dumper $tables;

1;

#!perl -T
use 5.006;
use strict;
use warnings;
use Data::Dumper;
use Test::More tests => 1;

BEGIN {
    use_ok( 'Struct::Path' ) || print "Bail out!\n";
}

diag( "Testing Struct::Path $Struct::Path::VERSION, Perl $], $^X, Data::Dumper $Data::Dumper::VERSION" );

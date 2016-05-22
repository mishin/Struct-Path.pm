package _common;

# common parts for Struct::Path tests

use Data::Dumper;
use parent qw(Exporter);

our @EXPORT_OK = qw($s_mixed scmp);

our $s_mixed = {
    'a' => [
        {
            'a2a' => { 'a2aa' => 0 },
            'a2b' => { 'a2ba' => undef },
            'a2c' => { 'a2ca' => [] },
        },
        [ 'a0', 'a1' ],
    ],
    'b' => {
        'ba' => 'vba',
        'bb' => 'vbb',
    },
    'c' => 'vc',
};

sub scmp($$$) { # compare structures by data
    my $got = Data::Dumper->new([shift])->Terse(1)->Sortkeys(1)->Quotekeys(0)->Indent(0)->Dump();
    my $exp = Data::Dumper->new([shift])->Terse(1)->Sortkeys(1)->Quotekeys(0)->Indent(0)->Dump();
    print STDERR "\nDEBUG: === " . shift . " ===\ngot: $got\nexp: $exp\n" if ($ENV{DEBUG});
    return $got eq $exp;
}

1;
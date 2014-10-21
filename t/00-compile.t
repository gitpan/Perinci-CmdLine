use strict;
use warnings;

# This test was generated via Dist::Zilla::Plugin::Test::Compile 2.018

use Test::More 0.88;



use Capture::Tiny qw{ capture };

my @module_files = qw(
Perinci/CmdLine.pm
Perinci/CmdLine/Easy.pm
Perinci/CmdLine/I18N.pm
Perinci/CmdLine/I18N/en.pm
Perinci/CmdLine/I18N/id.pm
);

my @scripts = qw(
bin/peri-func-usage
bin/peri-run
bin/strip-result-env-json
bin/strip-result-env-yaml
);

# no fake home requested

my @warnings;
for my $lib (@module_files)
{
    my ($stdout, $stderr, $exit) = capture {
        system($^X, '-Mblib', '-e', qq{require q[$lib]});
    };
    is($?, 0, "$lib loaded ok");
    warn $stderr if $stderr;
    push @warnings, $stderr if $stderr;
}

use Test::Script 1.05;
foreach my $file ( @scripts ) {
    script_compiles( $file, "$file compiles" );
}


is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};



done_testing;

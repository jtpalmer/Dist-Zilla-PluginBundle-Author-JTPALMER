#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
    my @modules = qw(
        Dist::Zilla::PluginBundle::Author::JTPALMER
        Pod::Weaver::PluginBundle::Author::JTPALMER
    );

    for my $module (@modules) {
        use_ok($module) or BAIL_OUT("Failed to load $module");
    }
}

diag(
    sprintf(
        'Testing Dist::Zilla::PluginBundle::Author::JTPALMER %f, Perl %f, %s',
        $Dist::Zilla::PluginBundle::Author::JTPALMER::VERSION,
        $], $^X
    )
);

done_testing();


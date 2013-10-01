package Perinci::CmdLine::ColorTheme::Default;

use 5.010;
use strict;
use warnings;

our $VERSION = '0.91'; # VERSION

our %color_themes = (

    no_color => {
        v => 1.1,
        summary => 'Special theme that means no color',
        colors => {
        },
        no_color => 1,
    },

    default => {
        v => 1.1,
        summary => 'Default (for terminals with black background)',
        colors => {
            heading       => 'ff9933',
            text          => undef,
            error_label   => 'cc0000',
            warning_label => 'cccc00',
            program_name  => {ansi_fg=>"\e[1m"}, # bold
            option_name   => 'cc6633',
            #option_value  => undef,
            argument      => undef,
        },
    },

    default_whitebg => {
        v => 1.1,
        summary => 'Default (for terminals with white background)',
        colors => {
        },
    },

);

1;
# ABSTRACT: Default color themes

__END__

=pod

=encoding utf-8

=head1 NAME

Perinci::CmdLine::ColorTheme::Default - Default color themes

=head1 VERSION

version 0.91

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DESCRIPTION

=head1 FUNCTIONS


None are exported by default, but they are exportable.

=cut

package Perinci::CmdLine::ColorTheme::Default;

use 5.010;
use strict;
use warnings;

our $VERSION = '1.20'; # VERSION

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
            emphasis      => {ansi_fg=>"\e[1m"}, # bold
            #option_value  => undef,
            #argument      => undef,
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

=encoding UTF-8

=head1 NAME

Perinci::CmdLine::ColorTheme::Default - Default color themes

=head1 VERSION

This document describes version 1.20 of Perinci::CmdLine::ColorTheme::Default (from Perl distribution Perinci-CmdLine), released on 2014-08-24.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Perinci-CmdLine>.

=head1 SOURCE

Source repository is at L<https://github.com/sharyanto/perl-Perinci-CmdLine>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=Perinci-CmdLine>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

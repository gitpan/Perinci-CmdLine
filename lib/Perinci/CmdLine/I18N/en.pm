package Perinci::CmdLine::I18N::en;
use parent qw(Perinci::CmdLine::I18N Perinci::To::Text::I18N::en);

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.96'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: English translation for Perinci::CmdLine

=pod

=encoding UTF-8

=head1 NAME

Perinci::CmdLine::I18N::en - English translation for Perinci::CmdLine

=head1 VERSION

version 0.96

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

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

__DATA__

### action: list

msgid  "There are no subcommands"
msgstr "There are no subcommands"

msgid  "%1 subcommands"
msgstr "%1 subcommands"

### action: version

msgid  "%1 version %2"
msgstr "%1 version %2"

### action: help

msgid  "Usage"
msgstr "Usage"

msgid  "--help (or -h, -?) (--verbose)"
msgstr "--help (or -h, -?) [--verbose]"

msgid  "--version (or -v)"
msgstr "--version (or -v)"

msgid  "--subcommands"
msgstr "--subcommands"

# usage when there are no subcommands
msgid  "(options)"
msgstr "[options]"

# help when there are subcommands and no default subcommand
msgid  "<subcommand> (options)"
msgstr "<subcommand> [options]"

# help when there are subcommands and there is a default subcommand
msgid  "--cmd=<other-subcommand> (options)"
msgstr "--cmd=<other-subcommand> [options]"

msgid  "Options"
msgstr "Options"

msgid  "Common options"
msgstr "Common options"

msgid  "Undo options"
msgstr "Undo options"

msgid  "%1 options"
msgstr "%1 options"

msgid  "required"
msgstr "required"

msgid  "Examples"
msgstr "Examples"

msgid  "Links"
msgstr "Links"

# --format
msgid  "Choose output format, e.g. json, text"
msgstr "Choose output format, e.g. json, text"

# --format-options
msgid  "Pass options to formatter"
msgstr "Pass options to formatter"

# --undo
msgid  "Undo previous action"
msgstr "Undo previous action"

# --redo
msgid  "Redo previous undone action"
msgstr "Redo previous undone action"

# --history
msgid  "List actions history"
msgstr "List actions history"

# --clear-history
msgid  "Clear actions history"
msgstr "Clear actions history"

# --dry-run
msgid  "Run in simulation mode (also via DRY_RUN=1)"
msgstr "Run in simulation mode (also via DRY_RUN=1)"

# --version
msgid  "Show version"
msgstr "Show version"

# --help
msgid  "Display this help message"
msgstr "Display this help message"

# --subcommands
msgid  "List available subcommands"
msgstr "List available subcommands"

# --cmd
msgid  "Select subcommand"
msgstr "Select subcommand"

# --action currently undocumented

# --quiet, --verbose, --debug, --trace, --log-level
msgid  "Set log level to quiet"
msgstr "Set log level to quiet (error and up)"

msgid  "Set log level to verbose"
msgstr "Set log level to verbose (info and up)"

msgid  "Set log level to debug"
msgstr "Set log level to debug and up"

msgid  "Set log level to trace"
msgstr "Set log level to trace and up"

msgid  "Set log level"
msgstr "Set log level"


msgid  "Subcommand"
msgstr "Subcommand"

msgid  "Subcommands"
msgstr "Subcommands"

msgid  "Popular subcommands"
msgstr "Popular subcommands"

msgid  "For general help, use '%1'"
msgstr "For general help, use '%1'"

msgid  "For help on a subcommand, use '%1'"
msgstr "For help on a subcommand, use '%1'"

msgid  "For more complete help, use '--help --verbose'"
msgstr "For more complete help, use '--help --verbose'"

msgid  "To see all available subcommands, use '--subcommands'"
msgstr "To see all available subcommands, use '--subcommands'"

# usage/function

msgid  "or as argument #%1"
msgstr "or as argument #%1"

msgid  "from stdin"
msgstr "from stdin"

msgid  "from file"
msgstr "from file"

msgid  "from stdin/files"
msgstr "from stdin/files"

# etc

msgid  "value in"
msgstr "value in"

# error messages

msgid  "Argument %1 must be set to '-' which means from stdin"
msgstr "Argument %1 must be set to '-' which means from stdin"

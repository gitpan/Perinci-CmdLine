package Perinci::CmdLine::I18N::en;
use parent qw(Perinci::CmdLine::I18N Perinci::To::Text::I18N::en);

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.42'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: English translation for Perinci::CmdLine


=pod

=head1 NAME

Perinci::CmdLine::I18N::en - English translation for Perinci::CmdLine

=head1 VERSION

version 0.42

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__

# list

msgid  "There are no subcommands"
msgstr "There are no subcommands"

msgid  "List of available %1 subcommands"
msgstr "List of available %1 subcommands"

# version

msgid  "%1 version %2"
msgstr "%1 version %2"

# usage

msgid  ""
"Usage:\n"
"\n"
"    %1 --help (or -h, -?)\n"
"    %1 --version (or -v)\n"
"    %1 (common options) (options)\n"
msgstr ""
"Usage:\n"
"\n"
"    %1 --help (or -h, -?)\n"
"    %1 --version (or -v)\n"
"    %1 [common options] [options]\n"

msgid  ""
"Usage:\n"
"\n"
"    %1 --help (or -h, -?)\n"
"    %1 --version (or -v)\n"
"    %1 --list (or -l)\n"
"    %1 SUBCOMMAND (common options) (options)\n"
msgstr ""
"Usage:\n"
"\n"
"    %1 --help (or -h, -?)\n"
"    %1 --version (or -v)\n"
"    %1 --list (or -l)\n"
"    %1 SUBCOMMAND [common options] [options]\n"

msgid  ""
"Common options:\n"
"\n"
"    --yaml, -y      Format result as YAML\n"
"    --json, -j      Format result as JSON\n"
"    --pretty, -p    Format result as pretty formatted text\n"
"    --nopretty, -P  Format result as simple formatted text\n"
"    --text         (Default) Select --pretty, or --nopretty when run piped\n"
msgstr ""
"Common options:\n"
"\n"
"    --yaml, -y      Format result as YAML\n"
"    --json, -j      Format result as JSON\n"
"    --pretty, -p    Format result as pretty formatted text\n"
"    --nopretty, -P  Format result as simple formatted text\n"
"    --text         (Default) Select --pretty, or --nopretty when run piped\n"

msgid  "Show version"
msgstr "Show version"

msgid  "Display this help message"
msgstr "Display this help message"

msgid  "List available subcommands"
msgstr "List available subcommands"

msgid  "List of available subcommands"
msgstr "List of available subcommands"

msgid  "Subcommand"
msgstr "Subcommand"

msgid  "Subcommands"
msgstr "Subcommands"

msgid  "Usage"
msgstr "Usage"

msgid  "Options"
msgstr "Options"

msgid  "For general help, type '%1'"
msgstr "For general help, type '%1'"

msgid  "For help on a subcommand, type '%1'"
msgstr "For help on a subcommand, type '%1'"

# usage/function

msgid  "or as argument #%1"
msgstr "or as argument #%1"


use utf8;

package Perinci::CmdLine::I18N::fr;
use parent qw(Perinci::CmdLine::I18N Perinci::To::Text::I18N::fr);

use Locale::Maketext::Lexicon::Gettext;
our %Lexicon = %{ Locale::Maketext::Lexicon::Gettext->parse(<DATA>) };

our $VERSION = '0.96'; # VERSION

#use Data::Dump; dd \%Lexicon;

1;
# ABSTRACT: French translation for Perinci::CmdLine

=pod

=encoding UTF-8

=head1 NAME

Perinci::CmdLine::I18N::fr - French translation for Perinci::CmdLine

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
msgstr "Il n'y a pas de sous-commandes"

msgid  "%1 subcommands"
msgstr "Sous-commandes de la catégorie '%1'"

### action: version

msgid  "%1 version %2"
msgstr "%1 version %2"

### action: help

msgid  "Usage"
msgstr "Utilisation"

msgid  "--help (or -h, -?) (--verbose)"
msgstr "--help (ou -h, -?) [--verbose]"

msgid  "--version (or -v)"
msgstr "--version (ou -v)"

msgid  "--subcommand"
msgstr "--subcommand"

# usage when there are no subcommands
msgid  "(options)"
msgstr "[options]"

# help when there are subcommands and no default subcommand
msgid  "<subcommand> (options)"
msgstr "<sous-commande> [options]"

# help when there are subcommands and there is a default subcommand
msgid  "--cmd=<other-subcommand> (options)"
msgstr "--cmd=<autre-sous-commande> [options]"

msgid  "Options"
msgstr "Options"

msgid  "Common options"
msgstr "Options communes"

msgid  "Undo options"
msgstr "Options d'annuler"

msgid  "%1 options"
msgstr "Options avec catégorie '%1'"

msgid  "required"
msgstr "nécessaire"

msgid  "Examples"
msgstr "Examples"

msgid  "Links"
msgstr "Liens"

# --format
msgid  "Choose output format, e.g. json, text"
msgstr "Choisir le format de sortie, par exemple json, text"

# --format-options
msgid  "Pass options to formatter"
msgstr "Passer des options au formateur"

# --undo
msgid  "Undo previous action"
msgstr "Annuler l'action précédente"

# --redo
msgid  "Redo previous undone action"
msgstr "Refaire l'action annulée"

# --history
msgid  "List actions history"
msgstr "Énumérer historique des actions"

# --clear-history
msgid  "Clear actions history"
msgstr "Effacer historique des actions"

# --dry-run
msgid  "Run in simulation mode (also via DRY_RUN=1)"
msgstr "Fonctionner en mode simulation (également via DRY_RUN=1)"

# --version
msgid  "Show version"
msgstr "Afficher la version"

# --help
msgid  "Display this help message"
msgstr "Afficher ce message d'aide"

# --subcommand
msgid  "List available subcommands"
msgstr "Énumérer des sous-commandes disponibles"

# --cmd
msgid  "Select subcommand"
msgstr "Sélectionner une sous-commande"

# --action currently undocumented

# --quiet, --verbose, --debug, --trace, --log-level
msgid  "Set log level to quiet"
msgstr "Fixer le niveau de logging au quiet"

msgid  "Set log level to verbose"
msgstr "Fixer le niveau de logging au verbose"

msgid  "Set log level to debug"
msgstr "Fixer le niveau de logging au debug"

msgid  "Set log level to trace"
msgstr "Fixer le niveau de logging au trace"

msgid  "Set log level"
msgstr "Fixer le niveau de logging"


msgid  "Subcommand"
msgstr "Sous-commande"

msgid  "Subcommands"
msgstr "Sous-commandes"

msgid  "Popular subcommands"
msgstr "Sous-commandes populaires"

msgid  "For general help, use '%1'"
msgstr "Pour de l'aide générale, utilisez '%1'"

msgid  "For help on a subcommand, use '%1'"
msgstr "Pour de l'aide sur une sous-commande, utilisez '%1'"

msgid  "For more complete help, use '--help --verbose'"
msgstr "Pour de l'aide plus complète, utilisez '--help --verbose'"

msgid  "To see all available subcommands, use '--subcommands'"
msgstr "Pour voir toutes les sous-commandes disponibles, utilisez '--subcommands'"

# usage/function

msgid  "or as argument #%1"
msgstr "ou comme argument #%1"

msgid  "from stdin"
msgstr "à partir de stdin"

msgid  "from file"
msgstr "à partir de fichier"

msgid  "from stdin/files"
msgstr "ou à partir de stdin/des fichiers"

# etc

msgid  "value in"
msgstr "valeur est l'une des"

# error messages

msgid  "Argument %1 must be set to '-' which means from stdin"
msgstr "Argument %1 doit être mis à '-', ce qui signifie à partir de stdin"

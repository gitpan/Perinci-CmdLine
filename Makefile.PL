
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Rinci/Riap-based command-line application framework",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Perinci-CmdLine",
  "EXE_FILES" => [
    "bin/strip-result-env-json",
    "bin/peri-func-usage",
    "bin/strip-result-env-yaml",
    "bin/peri-run"
  ],
  "LICENSE" => "perl",
  "NAME" => "Perinci::CmdLine",
  "PREREQ_PM" => {
    "Data::Dump::OneLine" => 0,
    "Data::Format::Pretty::Console" => 0,
    "Data::Unixish" => "1.39",
    "File::HomeDir" => 0,
    "File::Which" => 0,
    "JSON" => 0,
    "Log::Any" => 0,
    "Log::Any::App" => 0,
    "Monkey::Patch::Action" => 0,
    "Moo" => 0,
    "Perinci::Access" => "0.30",
    "Perinci::Access::HTTP::Client" => "0.06",
    "Perinci::Access::Perl" => "0.36",
    "Perinci::Access::Schemeless" => "0.36",
    "Perinci::Access::Simple::Client" => 0,
    "Perinci::BashComplete" => "0.29",
    "Perinci::Object" => "0.11",
    "Perinci::Result::Format" => "0.32",
    "Perinci::Sub::ConvertArgs::Argv" => 0,
    "Perinci::Sub::GetArgs::Argv" => "0.22",
    "Perinci::Sub::Util" => "0.36",
    "Perinci::Sub::Wrapper" => "0.40",
    "Perinci::To::Text" => "0.22",
    "Perinci::ToUtil" => 0,
    "Progress::Any" => "0.10",
    "Progress::Any::Output" => 0,
    "Progress::Any::Output::TermProgressBarColor" => "0.04",
    "Rinci" => "v1.1.38",
    "SHARYANTO::Getopt::Long::Util" => 0,
    "SHARYANTO::Role::ColorTheme" => 0,
    "SHARYANTO::Role::I18N" => "0.46",
    "SHARYANTO::Role::I18NRinci" => 0,
    "String::ShellQuote" => 0,
    "Text::ANSITable" => "0.23",
    "Tie::Simple" => 0,
    "UUID::Random" => 0,
    "YAML::Syck" => 0,
    "experimental" => 0
  },
  "TEST_REQUIRES" => {
    "Capture::Tiny" => 0,
    "File::Slurp" => 0,
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.91",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);





use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Capture::Tiny" => 0,
    "Data::Clone" => 0,
    "Module::Build" => "0.3601",
    "Perinci::Examples" => 0,
    "Test::More" => "0.96"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Rinci/Riap-based command-line application framework",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-CmdLine",
  "dist_version" => "0.54",
  "license" => "perl",
  "module_name" => "Perinci::CmdLine",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Format::Pretty" => 0,
    "Data::Format::Pretty::CompactJSON" => 0,
    "Data::Format::Pretty::Console" => 0,
    "Data::Format::Pretty::YAML" => 0,
    "Data::Sah" => "0.02",
    "File::Which" => 0,
    "JSON" => 0,
    "List::MoreUtils" => 0,
    "Log::Any" => 0,
    "Log::Any::App" => 0,
    "Moo" => 0,
    "Object::BlankStr" => 0,
    "Perinci::Access" => "0.22",
    "Perinci::Access::HTTP::Client" => 0,
    "Perinci::Access::TCP::Client" => 0,
    "Perinci::BashComplete" => "0.29",
    "Perinci::Result::Format" => "0.11",
    "Perinci::Sub::GetArgs::Argv" => "0.18",
    "Perinci::Sub::Wrapper" => "0.14",
    "Perinci::To::Text::AddDocLinesRole" => "0.10",
    "SHARYANTO::Role::Doc::Section" => 0,
    "SHARYANTO::Role::I18N" => 0,
    "SHARYANTO::Role::I18NRinci" => 0,
    "Setup::File::Symlink" => 0,
    "UUID::Random" => 0,
    "perl" => "5.010000"
  },
  "script_files" => [
    "bin/peri-run",
    "bin/u-symlink"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

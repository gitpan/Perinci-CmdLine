
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Rinci/Riap-based command-line application framework",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-CmdLine",
  "dist_version" => "0.39",
  "license" => "perl",
  "module_name" => "Perinci::CmdLine",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Capture::Tiny" => 0,
    "Data::Clone" => 0,
    "Data::Format::Pretty" => 0,
    "Data::Format::Pretty::Console" => 0,
    "Data::Format::Pretty::JSON" => 0,
    "Data::Format::Pretty::YAML" => 0,
    "Data::Sah" => "0.02",
    "JSON" => 0,
    "List::MoreUtils" => 0,
    "Log::Any" => 0,
    "Log::Any::App" => 0,
    "Moo" => 0,
    "Object::BlankStr" => 0,
    "Perinci::Access" => "0.06",
    "Perinci::BashComplete" => 0,
    "Perinci::Examples" => 0,
    "Perinci::Sub::GetArgs::Argv" => 0,
    "Perinci::Sub::Wrapper" => "0.14",
    "Test::More" => "0.96",
    "perl" => "5.010000"
  },
  "script_files" => [
    "bin/peri-run"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

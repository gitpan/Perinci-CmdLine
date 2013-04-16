
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Capture::Tiny" => 0,
    "File::Slurp" => 0,
    "Module::Build" => "0.3601",
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
  "dist_version" => "0.72",
  "license" => "perl",
  "module_name" => "Perinci::CmdLine",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Data::Dump::OneLine" => 0,
    "File::Which" => 0,
    "JSON" => 0,
    "Log::Any" => 0,
    "Log::Any::App" => 0,
    "Monkey::Patch::Action" => 0,
    "Moo" => 0,
    "Perinci::Access" => "0.30",
    "Perinci::Access::HTTP::Client" => "0.06",
    "Perinci::Access::InProcess" => "0.36",
    "Perinci::Access::Simple::Client" => 0,
    "Perinci::BashComplete" => "0.29",
    "Perinci::Object" => "0.11",
    "Perinci::Result::Format" => "0.11",
    "Perinci::Sub::GetArgs::Argv" => "0.22",
    "Perinci::Sub::Wrapper" => "0.40",
    "Perinci::To::Text::AddDocLinesRole" => "0.10",
    "Perinci::ToUtil" => 0,
    "Perinci::Tx::Manager" => "0.34",
    "Progress::Any" => 0,
    "Progress::Any::Output::LogAny" => 0,
    "Progress::Any::Output::TermProgressBar" => 0,
    "Rinci" => "v1.1.27",
    "SHARYANTO::Role::Doc::Section" => 0,
    "SHARYANTO::Role::I18N" => 0,
    "SHARYANTO::Role::I18NRinci" => 0,
    "Tie::Simple" => 0,
    "UUID::Random" => 0,
    "YAML::Syck" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/peri-run",
    "bin/strip-result-env-yaml",
    "bin/strip-result-env-json"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;

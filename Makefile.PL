
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.17;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Utility object to extract OS Code-Point Open data for British Postcodes",
  "AUTHOR" => "Michael Jemmeson <mjemmeson\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.17"
  },
  "DISTNAME" => "Geo-UK-Postcode-CodePointOpen",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Geo::UK::Postcode::CodePointOpen",
  "PREREQ_PM" => {
    "Geo::Coordinates::OSGB" => 0,
    "Geo::UK::Postcode::Regex" => 0,
    "Moo" => 0,
    "Path::Tiny" => "0.048",
    "Text::CSV" => 0,
    "Types::Path::Tiny" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec::Functions" => 0,
    "List::Util" => 0,
    "Test::More" => 0,
    "Test::Most" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.002",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "ExtUtils::MakeMaker" => 0,
  "File::Spec::Functions" => 0,
  "Geo::Coordinates::OSGB" => 0,
  "Geo::UK::Postcode::Regex" => 0,
  "List::Util" => 0,
  "Moo" => 0,
  "Path::Tiny" => "0.048",
  "Test::More" => 0,
  "Test::Most" => 0,
  "Text::CSV" => 0,
  "Types::Path::Tiny" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




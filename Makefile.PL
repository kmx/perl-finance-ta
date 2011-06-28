use strict;
use warnings;
use ExtUtils::MakeMaker;

my $libs = defined $ENV{TALIB_LIBS} ? $ENV{TALIB_LIBS} : `ta-lib-config --libs`;
my $cflags = defined $ENV{TALIB_CFLAGS} ? $ENV{TALIB_CFLAGS} : `ta-lib-config --cflags`;

unless ($libs) {
  warn "\nERROR: ta-lib not found on your system!\n\n";
  exit 0;
}

WriteMakefile(
  NAME         => 'Finance::TA',
  ABSTRACT     => 'Perl wrapper for Technical Analysis Library',
  AUTHOR       => 'Wim Verhaegen <wimv@cpan.org>',
  VERSION      => 'v0.4.0',
  LIBS         => [$libs],
  INC          => $cflags,
  OBJECT       => '$(O_FILES)',
  PREREQ_PM    => { 'Test'   => 0 },
  LICENSE      => 'bsd',
  dist         => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  clean        => { FILES => 'Finance-TA-*' },
  META_MERGE   => {
      no_index     => { directory => ['_swig'] },
      resources    => {
          homepage     => 'http://ta-lib.org/',
          repository   => 'https://github.com/kmx/perl-finance-ta',
      },
  },
  # generating ta_libc_wrap.c + TA.pm via swig (needed only when upgrading to the newer version)
  'depend'       => { 
      'ta_libc_wrap.c TA.pm' => "_swig/ta_func.swg _swig/ta_libc.swg _swig/perl.pm\n".
          "\tswig -perl5 -module \"Finance::TA\" -proxy -Fstandard -o ta_libc_wrap.c -I/usr/local/include/ta-lib _swig/ta_libc.swg\n".
	  "\tcat _swig/perl.pm >> TA.pm\n",
  },
);

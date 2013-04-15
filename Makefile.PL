use strict;
use warnings;
use ExtUtils::MakeMaker;

my $makemakerversion = $ExtUtils::MakeMaker::VERSION;
$makemakerversion =~s/_//g;

WriteMakefile(
    NAME                => 'Net::ASN',
    AUTHOR              => 'David J. Freedman <lochii@convergence.cx>',
    VERSION_FROM        => 'lib/Net/ASN.pm',
    ABSTRACT_FROM       => 'lib/Net/ASN.pm',
    ($makemakerversion >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Net-ASN-*' },
);

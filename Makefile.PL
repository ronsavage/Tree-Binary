use strict;
use warnings;

use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my(%params) =
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Stevan Little (stevan@iinteractive.com)',
		ABSTRACT => 'An Object Oriented Binary Tree for Perl',
	) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST Tree-Binary-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'Tree-Binary',
	NAME      => 'Tree::Binary',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		'constant'            => 0,
		'Scalar::Util'        => 1.10,
		'strict'              => 0,
		'Test::Exception'     => 0.15,
		'Test::More'          => 0.98,
#		'Test::Pod'           => 1.45, # Make it optional. See xt/author/pod.t.
#		'Test::Pod::Coverage' => 1.08, # Make it optional. See xt/author/pod.t.
		'warnings'            => 0,
	},
	VERSION_FROM => 'lib/Tree/Binary.pm',
);

if ( ($ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/) && ($ExtUtils::MakeMaker::VERSION > 6.30) )
{
	$params{LICENSE} = 'artistic_2';
}

if ($ExtUtils::MakeMaker::VERSION ge '6.46')
{
	$params{META_MERGE} =
	{
		resources =>
		{
			bugtracker => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Tree-Binary',
			license    => 'http://www.perlfoundation.org/artistic_license_2_0',
			repository =>
			{
				type => 'git',
				url  => 'https://github.com/ronsavage/Tree-Binary.git',
				web  => 'https://github.com/ronsavage/Tree-Binary',
			},
		},
	};
}

WriteMakefile(%params);

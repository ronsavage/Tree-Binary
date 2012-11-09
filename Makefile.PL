use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
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
		Scalar::Util    => 1.10,
		strict          => 0,
		Test::Exception => 0.15,
	 	Test::More      => 0.94,
 		Test::Pod       => 1.44,
		warnings        => 0,
	},
	VERSION_FROM => 'lib/Tree/Binary.pm',
);

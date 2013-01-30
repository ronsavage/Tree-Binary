use Module::Build;

Module::Build -> new
(
	module_name    => 'Tree::Binary',
	license        => 'artistic_2',
	dist_abstract  => 'An Object Oriented Binary Tree for Perl',
	dist_author    => 'Stevan Little (stevan@iinteractive.com)',
	build_requires =>
	{
		Test::More        => 0.98,
		Test::Pod           => 1.45,
		Test::Pod::Coverage => 1.08,
	},
	configure_requires =>
	{
		Module::Build => 0.3800,
	},
	requires =>
	{
		Scalar::Util    => 1.10,
		strict          => 0,
		Test::Exception => 0.15,
		warnings        => 0,
	},
) -> create_build_script();

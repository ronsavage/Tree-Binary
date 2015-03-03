use strict;
use warnings;

use Module::Build;

# ----------------

my $class = Module::Build->subclass(code => <<'EOF');

sub ACTION_authortest
{
	my($self) = @_;

	$self->depends_on('build');
	$self->depends_on('manifest');
	$self->depends_on('distmeta');

	$self->test_files( qw< t xt/author > );
	$self->recursive_test_files(1);

	$self->depends_on('test');

	return;
}
EOF

$class -> new
(
	module_name    => 'Tree::Binary',
	license        => 'artistic_2',
	dist_abstract  => 'An Object Oriented Binary Tree for Perl',
	dist_author    => 'Stevan Little (stevan@iinteractive.com)',
	build_requires =>
	{
		'Test::More' => 1.001014,
		'Test::Pod' => 1.48,
		'Test::Pod::Coverage' => 1.10,
	},
	configure_requires =>
	{
		'Module::Build' => 0.4211,
	},
	meta_merge =>
	{
		resources =>
		{
			repository => 'https://github.com/ronsavage/Tree-Binary',
		},
	},
	requires =>
	{
		'constant' => 0,
		'Scalar::Util' => 1.10,
		'strict' => 0,
		'Test::Exception' => 0.15,
		'warnings' => 0,
	},
) -> create_build_script();

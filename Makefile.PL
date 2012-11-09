use ExtUtils::MakeMaker;
WriteMakefile(
    NAME         => 'Tree::Binary',
    VERSION_FROM => 'lib/Tree/Binary.pm', 
    PREREQ_PM    => {
        'Test::More'      => 0.47,
        'Test::Exception' => 0.15,
        'Scalar::Util'    => 1.10
    }
);

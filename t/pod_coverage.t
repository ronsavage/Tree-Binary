#!/usr/bin/perl

use strict;
use warnings;

use Test::Simple;

eval "use Test::Pod::Coverage 1.08";
plan skip_all => "Test::Pod::Coverage 1.08 required for testing POD coverage" if $@;

all_pod_coverage_ok();

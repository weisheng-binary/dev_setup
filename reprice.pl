#!/usr/bin/perl

use strict;
use warnings;

use BOM::Product::ContractFactory qw(produce_contract);

my ($shortcode) = @ARGV;

my $c = produce_contract($shortcode, 'JPY');
my $p = $c->build_parameters;
$p->{date_pricing} = $c->date_start;
$c = produce_contract($p);
$DB::single=1;
1;

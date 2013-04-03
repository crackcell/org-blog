#!/usr/bin/perl
##! @description: usage
##! @version: 1
##! @author: crackcell <tanmenglong@gmail.com>
##! @date:   Sun Mar 24 03:09:59 2013

use strict;
use Getopt::Std;
use Tree::Trie;

#--------------- global variable --------------


#------------------ function ------------------


#------------------- main -------------------

sub usage {
	print("orgblog.pl\n");
	print("Usage: -h -i -d\n");
	print("  -h       : show help message\n");
	print('  -i $file : input file', "\n");
	print('  -d $file : dict file', "\n");
}

my %opts;
$opts{'i'} = "";
$opts{'d'} = "";
getopts('hi:d:', \%opts);

if (length($opts{'i'}) == 0 || length($opts{'d'}) == 0) {
	usage();
	exit 1;
} elsif (exists $opts{'h'}) {
	usage();
	exit 0;
}

my $trie = new Tree::Trie;

open(D, $opts{'d'}) or die "open file fail";

#while (<D>) {
#	chomp;
$trie->add("中国");
$trie->add("中国人");
my @all = $trie->lookup("中国人");
print @all, "\n";
#}

close(D);

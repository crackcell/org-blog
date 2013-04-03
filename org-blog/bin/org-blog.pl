#!/usr/bin/perl
##! @description: usage
##! @version: 1
##! @author: crackcell <tanmenglong@gmail.com>
##! @date:   Sun Mar 18 11:58:27 2012

use strict;
use Getopt::Std;
use HTML::Template;
use Date::Manip;
use POSIX qw(strftime);
use File::Basename;
use File::Find::Rule;
use Storable qw(dclone);
use HTTP::Server::Brick;

#--------------- global variable --------------

my @keyword_dict;

#------------------ function ------------------


##! @todo: Show help message
sub usage {
	print("orgblog.pl\n");
	print("Usage: -h -i -t -d -o -s\n");
	print("  -h                  : show help message\n");
	print('  -i $org_file_folder : specify path for .org files', "\n");
	print('  -t $template_path   : specify path for .tmpl files', "\n");
	print('  -o $output_path     : specify path for output files', "\n");
	print('  -b $base_url        : specify base url', "\n");
	print('  -d $file            : keyword dict', "\n");
	print('  -s                  : launch a simple http server', "\n");
}

##! @todo: Dump a list for debug
sub dump_list {
    my $list_ptr = shift;
	foreach my $item (@{$list_ptr}) {
		print($item, "\n");
	}
}

##! @todo: Dump meta
##! @param: 0 => meta ptr
sub dump_post_meta {
    my $meta_ptr = shift;
	print "==\n";
	print "titile: ", $meta_ptr->{'title'}, "\n";
	print "raw_date", $meta_ptr->{'raw_date'}, "\n";
	print "org_file: ", $meta_ptr->{'org_file'}, "\n";
	print "org_html_file: ", $meta_ptr->{'org_html_file'}, "\n";
	print "org_img_path: ", $meta_ptr->{'org_img_path'}, "\n";
	print "org_filename: ", $meta_ptr->{'org_filename'}, "\n";
	print "basename: ", $meta_ptr->{'basename'}, "\n";
	print "category: ", $meta_ptr->{'category'}, "\n";
	print "post_path: ", $meta_ptr->{'post_path'}, "\n";
	print "post_file: ", $meta_ptr->{'post_file'}, "\n";
	print "post_img_path: ", $meta_ptr->{'post_img_path'}, "\n";
	print "url_path: ", $meta_ptr->{'url_path'}, "\n";
	print "url: ", $meta_ptr->{'url'}, "\n";
	print "abs_url: ", $meta_ptr->{'abs_url'}, "\n";
	print "url_img_path: ", $meta_ptr->{'url_img_path'}, "\n";
	print "keywords: ", $meta_ptr->{'keywords'}, "\n";
	print "description: ", $meta_ptr->{'description'}, "\n";
}

##! @todo: Dump category meta
##! @param: 0 => category meta ptr
sub dump_category_meta {
    my $category_meta_dict_ptr = shift;
	print "==========category\n";
	foreach my $level (keys %{$category_meta_dict_ptr}) {
		print "===", $level, "\n";
		foreach my $post_meta_ptr (@{$category_meta_dict_ptr->{$level}}) {
			print $post_meta_ptr->{'title'}, "\t";
		}
		print "\n";
	}
}


##! @todo: Write a file
##! @param: 0 => path
##! @param: 1 => content
sub write_file {
	my $path = shift;
    my $content = shift;
	open(OUT, ">" . $path);
	print OUT $content;
	close(OUT);
	print "generating: ", $path, "\n";
}

##! @todo: Get category info from org file path
##! @param: 0 => org file path
##! @param: 1 => ptr to meta info
sub get_category {
	my $org_path = shift;
	my $meta_ptr = shift;
	$org_path =~ s/\.\///;
	$meta_ptr->{'category'} =
		substr($meta_ptr->{'org_file'}, length($org_path),
			   length($meta_ptr->{'org_file'}) - length($org_path) -
			   length($meta_ptr->{'org_filename'}));
}

##! @todo: Generate post meta info
##! @param: 0 => path to org files
##! @param: 1 => output path
##! @param: 2 => base url
##! @param: 3 => ptr to meta info list
sub gen_post_meta {
    my $org_path = shift;
	my $output_path = shift;
	my $base_url = shift;
	my $post_meta_list_ptr = shift;
	
    $base_url =~ s/\/+$//g;
	my @search_dir_list = ($org_path);
	my @org_file_list;
	list_all_files(\@search_dir_list, "*.org", \@org_file_list);
	foreach my $org_file (@org_file_list) {
		my %meta = ();

		$meta{'org_file'} = $org_file;
		$meta{'org_html_file'} = $org_file;
		$meta{'org_html_file'} =~ s/\.org$/\.html/;
		$meta{'org_img_path'} = $org_file;
		$meta{'org_img_path'} =~ s/\.org$//;
		$meta{'org_filename'} = fileparse($org_file);
		my @suffix_list = (".org");
		$meta{'basename'} = basename($org_file, @suffix_list);
		get_category($org_path, \%meta);

		push(@{$post_meta_list_ptr}, \%meta);
	}

	foreach my $meta_ptr (@{$post_meta_list_ptr}) {
#		next if not $meta_ptr->{'org_file'} eq "forge/Emacs/replace-semantic-code-helper-with-popup-from-auto-complete.org";
#		print "\norg_file===> ", $meta_ptr->{'org_file'}, "\n\n";

		my $title = "";
		my $date = "";
		my $content = "";
		my $keywords = "";
		my $description = "";
		if (not extract_html($meta_ptr->{'org_html_file'},
							 \$title, \$date, \$content)) {

			my $year = UnixDate($date, "%Y");
			my $month = UnixDate($date, "%m");
			my $day = UnixDate($date, "%d");

			my $post_path = "$output_path/posts/$year/$month/$day/";
			my $post_file = $post_path . $meta_ptr->{'basename'} . ".html";
			my $post_img_path = $post_path . $meta_ptr->{'basename'};

			my $url_path = "/posts/$year/$month/$day/";
			my $url = $url_path . $meta_ptr->{'basename'} . ".html";
			my $abs_url = $base_url . $url;
			my $url_img_path = $url_path . $meta_ptr->{'basename'} . "/";

			extract_keywords(\$content, \$keywords);
			extract_description(\$content, \$description);
			$description = $title . " " . $description;

			$meta_ptr->{'keywords'} = $keywords;
			$meta_ptr->{'description'} = $description;

			$meta_ptr->{'post_path'} = $post_path;
			$meta_ptr->{'post_file'} = $post_file;
			$meta_ptr->{'post_img_path'} = $post_img_path;

			$meta_ptr->{'url_path'} = $url_path;
			$meta_ptr->{'url'} = $url;
			$meta_ptr->{'abs_url'} = $abs_url;
			$meta_ptr->{'url_img_path'} = $url_img_path;

			$meta_ptr->{'title'} = $title;
			$meta_ptr->{'content'} = $content;

			$meta_ptr->{'date'} = UnixDate($date, "%Y-%m-%d");
			$meta_ptr->{'sort_date'} = UnixDate($date, "%Y%m%d%H%M%S");

			dump_post_meta($meta_ptr);

		}
	}

}

##! @todo: Generate cateogry meta info list
##! @param: 0 => ptr to post meta info list
##! @param: 1 => ptr to category meta info dict
##! @return:
##!   0 => success
##!   1 => failure
sub gen_category_meta {
    my $post_meta_list_ptr = shift;
	my $category_meta_dict_ptr = shift;
	foreach my $post_meta_ptr (@{$post_meta_list_ptr}) {
		my @level_list = split(/\//, $post_meta_ptr->{'category'});
		foreach my $level (@level_list) {
			next if length($level) == 0;
			my @post_list = ();
			my $level_post_list_ptr = \@post_list;
			if (exists $category_meta_dict_ptr->{$level}) {
				$level_post_list_ptr = $category_meta_dict_ptr->{$level};
			}
			push(@{$level_post_list_ptr}, $post_meta_ptr);
			$category_meta_dict_ptr->{$level} = $level_post_list_ptr;
		}
	}
}

sub list_all_files {
    my $dir_list_ptr = shift;
	my $pattern = shift;
	my $array_ptr = shift;
	@{$array_ptr} = File::Find::Rule->file()->name($pattern)->in(@{$dir_list_ptr});
}

##! @todo: Export org files into html
##! @param: 0 => meta info list
##! @return:
##!   0 => success
##!   1 => failure
sub export_org {
	my $meta_ptr = shift;
	foreach my $meta_ptr (@{$meta_ptr}) {
		next if ($meta_ptr->{'title'} eq "");
		export_org_file($meta_ptr->{"org_file"},
						"Menglong Tan",
						'tanmenglong@gmail.com');
	}
}

##! @todo: Export an org file to html
##! @param: 0 => org filename
##! @return:
##!   0 => success
##!   1 => failure
sub export_org_file {
    my $org_file = shift;
	my $username = shift;
	my $email = shift;

	my $html_filename = $org_file;
	$html_filename =~ s/\.org$/\.html/g;
	if (not -e $html_filename) {
		my $cmd = "emacs --batch --eval '(progn (setq user-full-name \"$username\")(setq user-mail-address \"$email\")(find-file \"$org_file\")(org-export-as-html 3))'";
		`$cmd`;
	}
}

##! @todo: Render index
##! @param: 0 => post meta list ptr
##! @param: 1 => category list ptr
##! @param: 2 => tmpl file
##! @param: 3 => output file
##! @return:
##!   0 => success
##!   1 => failure
sub render_index {
    my $post_meta_list_ptr = shift;
	my $index_category_list_ptr = shift;
	my $tmpl_file = shift;
	my $output_file = shift;

	### prepare post info list
	my @tmpl_post_list;

	foreach my $meta_ptr (@{$post_meta_list_ptr}) {
		next if $meta_ptr->{'title'} eq "";
		my %tmpl_post_info = ();
		$tmpl_post_info{'title'} = $meta_ptr->{'title'};
		$tmpl_post_info{'date'} = $meta_ptr->{'date'};
		$tmpl_post_info{'sort_date'} = $meta_ptr->{'sort_date'};
		$tmpl_post_info{'abs_url'} = $meta_ptr->{'abs_url'};
		push(@tmpl_post_list, \%tmpl_post_info);
	}

	### sort post list
	my @index_post_list = sort {
		$b->{'sort_date'} cmp $a->{'sort_date'};
	} @tmpl_post_list;

	foreach my $meta_ptr (@index_post_list) {
		delete($meta_ptr->{'sort_date'});
	}

	my $index_tmpl = HTML::Template->new(filename => $tmpl_file);
	$index_tmpl->param(POST_LIST => \@index_post_list,
					   CATEGORY_LIST => $index_category_list_ptr);
	
	write_file($output_file, $index_tmpl->output);
}

##! @todo: Render feed
##! @param: 0 => post meta list ptr
##! @param: 1 => tmpl file
##! @param: 2 => output file
##! @return:
##!   0 => success
##!   1 => failure
sub render_feed {
    my $post_meta_list_ptr = shift;
	my $tmpl_file = shift;
	my $output_file = shift;

	my @tmpl_post_list = ();
	foreach my $meta_ptr (@{$post_meta_list_ptr}) {
		my %tmpl_post_info = ();
		$tmpl_post_info{'title'} = $meta_ptr->{'title'};
		$tmpl_post_info{'date'} = $meta_ptr->{'date'};
		$tmpl_post_info{'sort_date'} = $meta_ptr->{'sort_date'};
		$tmpl_post_info{'abs_url'} = $meta_ptr->{'abs_url'};
		$tmpl_post_info{'content'} = $meta_ptr->{'content'};
		push(@tmpl_post_list, \%tmpl_post_info);
	}

	### sort post list
	my @feed_post_list = sort {
		$b->{'sort_date'} cmp $a->{'sort_date'};
	} @tmpl_post_list;

	foreach my $meta_ptr (@feed_post_list) {
		delete($meta_ptr->{'sort_date'});
	}

	my $last_build_date = strftime "%Y%m%d-%H%M\n", localtime;

	my $feed_tmpl = HTML::Template->new(filename => $tmpl_file);
	$feed_tmpl->param(
		LAST_BUILD_DATE => $last_build_date,
		POST_LIST => \@feed_post_list);
	write_file($output_file, $feed_tmpl->output);
}



##! @todo: Render templates
##! @param: 0 => post meta info list
##! @param: 2 => category meta info dict
##! @param: 2 => tmpl path
##! @param: 3 => org path
##! @param: 4 => base url
##! @param: 5 => output path
##! @return:
##!   0 => success
##!   1 => failure
sub render_tmpl {
	my $post_meta_list_ptr = shift;
	my $category_meta_dict_ptr = shift;
	my $tmpl_path = shift;
	my $org_path = shift;
	my $base_url = shift;
	my $output_path = shift;

	### 1. create templates
    my $index_tmpl = HTML::Template->new(filename => $tmpl_path . "/index.html");
	my $category_tmpl = HTML::Template->new(filename => $tmpl_path . "/index.html");
	my $post_tmpl = HTML::Template->new(filename => $tmpl_path . "/post.html");

    $base_url =~ s/\/+$//g;
	$tmpl_path =~ s/\/+$//g;
    $output_path =~ s/\/+$//g;

	### 2. render posts
	my $cmd = "";
	foreach my $meta_ptr (@{$post_meta_list_ptr}) {
		next if ($meta_ptr->{'title'} eq "");

		# get img list
		my @img_list = $meta_ptr->{'content'} =~ /<img src="(.*?)"/g;
		my $category = $meta_ptr->{'category'};

		# mkdir for post and images
		if (scalar @img_list > 0) {
			$cmd = "mkdir -p " . $meta_ptr->{'post_img_path'};
			`$cmd`;
			foreach my $img (@img_list) {
				$cmd = "cp $org_path/$category/$img " . $meta_ptr->{'post_img_path'};
				`$cmd`;
			}
		} else {
			$cmd = "mkdir -p " . $meta_ptr->{'post_path'};
			`$cmd`;
		}

		path_rel2abs($base_url, $meta_ptr->{'url_img_path'}, 
					 \ ($meta_ptr->{'content'}));

		$post_tmpl->param(TITLE => $meta_ptr->{'title'});
		$post_tmpl->param(DATE => $meta_ptr->{'raw_date'});
		$post_tmpl->param(CONTENT => $meta_ptr->{'content'});

		$post_tmpl->param(KEYWORDS => $meta_ptr->{'keywords'});
		$post_tmpl->param(DESCRIPTION => $meta_ptr->{'description'});

		write_file($meta_ptr->{'post_file'}, $post_tmpl->output);

	}

	### TODO redner archive

	### 3. render category

	# prepare category list
	my @index_category_list = ();
	foreach my $category_name (keys %{$category_meta_dict_ptr}) {
		my %category_info = ();
		$category_info{'name'} = $category_name;
		$category_info{'abs_url'} = "$base_url/categories/$category_name.html";
		push(@index_category_list, \%category_info);
	}

	### render category
	`mkdir -p $output_path/categories`;
	foreach my $category_name (keys %{$category_meta_dict_ptr}) {
		next if $category_name eq "";
		render_index($category_meta_dict_ptr->{$category_name}, \@index_category_list,
					 "$tmpl_path/category.html",
					 "$output_path/categories/$category_name.html");
		render_feed($category_meta_dict_ptr->{$category_name}, "$tmpl_path/feed.xml",
					"$output_path/categories/$category_name.xml");
	}

	### redner index
	render_index($post_meta_list_ptr, \@index_category_list,
				 "$tmpl_path/index.html", "$output_path/index.html");

	### render feed
	render_feed($post_meta_list_ptr, "$tmpl_path/feed.xml", "$output_path/feed.xml");
}

##! @todo: Extract info from html file
##! @return:
##!   0 => success
##!   1 => failure
sub extract_html {
    my $html_file_path = shift;
	my $title_ptr = shift;
	my $date_ptr = shift;
	my $content_ptr = shift;

	my $find_title = 0;
	my $find_date = 0;
	my $find_content = 0;

	my $stat = 0;
	my $content = "";

	print $html_file_path, "\n";
	open(HTML, "<" . $html_file_path);
	while (<HTML>) {
		chomp;
		my $file_content = $_;
		if ($stat == 0 &&
			$file_content =~ /<title>(.*?)<\/title>/) {
			$$title_ptr = $1;
			$find_title = 1;
#			print("title:", $1, "\n");
			$stat = 1;
		} elsif ($stat == 1 &&
				 $file_content =~ /<meta name="generated" content="(.*?)"\/>/) {
			$$date_ptr = $1;
			$find_date = 1;
#			print("date:", $1, "\n");
			$stat = 2;
		} elsif ($stat == 2 &&
				 $file_content =~ /<div id="table-of-contents">/) {
			$content = $content . $file_content;
#			print("3==>", $file_content, "\n");
			$stat = 3;
		} elsif ($stat == 3 &&
				 not $file_content =~ /<\/body>/) {
			$content = $content . $file_content . "\n";
#			print("4==>", $file_content, "\n");
			$stat = 3;
		} elsif($stat == 3 &&
				$file_content =~ /<\/body>/) {
			${$content_ptr} = $content;
			$find_content = 1;
			last;
		}
	}
	close(HTML);
	return not ($find_title && $find_date && $find_content);
}

sub extract_keywords {
	my $content_ptr = shift;
	my $keywords_ptr = shift;

	foreach my $term (@keyword_dict) {
		if (${$content_ptr} =~ /$term/ && length($term) > 6) {
			${$keywords_ptr} = ${$keywords_ptr} . "," . $term;
		}
	}
}

sub extract_description {
	my $content_ptr = shift;
	my $description_ptr = shift;

	my $desp = ${$content_ptr};

	$desp =~ s/[\r\n]//g;
	if (not $desp =~ /<div id="text-table-of-contents">(.*?)<\/div>/) {
		return;
	}

	my $desp = $1;
	$desp =~ s/<.+?>/ /g;
	$desp =~ s/ +/ /g;

	${$description_ptr} = $desp;
}

##! @todo: Change relative path to absolute in HTML
##! @param: 0 => base url
##! @param: 1 => path
##! @param: 2 => ptr to html content
##! @return:
##!   0 => success
##!   1 => failure
sub path_rel2abs {
    my $base_url = shift;
    my $path = shift;
    my $content_ptr = shift;
    $base_url =~ s/\/+$//;
	$path =~ s/^\/+//;
    ${$content_ptr} =~ s/<img src="\.\//<img src="$base_url\/$path\//g;
}

#------------------- main -------------------

my %opts;

$opts{'i'} = "";
$opts{'b'} = "";
$opts{'t'} = "";
$opts{'o'} = "";
$opts{'d'} = "";
getopts('hsi:t:o:b:d:', \%opts);

if (exists $opts{'s'}) {
	my $server = HTTP::Server::Brick->new(port => 8080);
	$server->mount( '/' => {path => './'});
	$server->start;
} elsif (exists $opts{'h'} || length($opts{'i'}) == 0 ||
	length($opts{'t'}) == 0 || length($opts{'o'}) == 0 ||
	length($opts{'b'}) == 0 || length($opts{'d'}) == 0) {
	usage();
	exit 0;
}

### 0. init data
my @post_meta_list;
my %category_meta_dict;

open(D, $opts{'d'}) or die "open keyword dict fail";
while (<D>) {
	chomp;
	push(@keyword_dict, $_);
}
close(D);

### 1. generate post meta info
my $org_path = $opts{'i'};
my $output_path = $opts{'o'} . "/";
my $base_url = $opts{'b'} . "/";
gen_post_meta($org_path, $output_path, $base_url, \@post_meta_list);

### 2. export org files to html
export_org(\@post_meta_list);

### 3. generate category meta info
gen_category_meta(\@post_meta_list, \%category_meta_dict);

### 4. render templates
my $tmpl_path = $opts{'t'} . "/";
render_tmpl(\@post_meta_list, \%category_meta_dict,
			$tmpl_path, $org_path, $base_url, $output_path);

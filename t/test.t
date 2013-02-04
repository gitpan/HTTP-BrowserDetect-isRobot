#!/usr/bin/perl

use strict;
use warnings;
use HTTP::BrowserDetect::isRobot 'is_robot';
use Test::More;

my @robots = (
'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)',
'Mozilla/2.0 (compatible; Ask Jeeves/Teoma; +http://sp.ask.com/docs/about/tech_crawling.html)',
);

foreach my $a (@robots) {
    ok( is_robot($a), $a );
}

my @browsers = (
'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.57 Safari/537.17',
'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)'
);

foreach my $a (@browsers) {
    ok( ( not is_robot($a) ), $a );
}

done_testing();

1;

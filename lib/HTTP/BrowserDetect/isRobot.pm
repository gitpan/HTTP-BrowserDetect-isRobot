package HTTP::BrowserDetect::isRobot;
{
    $HTTP::BrowserDetect::isRobot::VERSION = '0.01';
}

# ABSTRACT: test if the user-agent is a robot or not

use strict;
use warnings;
use base 'Exporter';
use vars qw/@EXPORT_OK/;

@EXPORT_OK = qw/is_robot/;

sub is_robot {
    my ($agent) = @_;

    return 1
      if $agent =~
/Googlebot|Baiduspider|Yahoo! Slurp|Bingbot|MSNbot|altavista|lycos|infoseek|webcrawler|lecodechecker|Ask Jeeves|facebookexternalhit|adsbot-google|ia_archive|FatBot|Xenu Link Sleuth|BlitzBOT|btbot|CatchBot|Charlotte|Discobot|FAST-WebCrawler|FurlBot|Gaisbot|iaskspider|Mediapartners-Google|PycURL|Seekbot|SEOChat|SeznamBot|silk|Sitebot|sogou spider|Sosospider|TweetedTimes|YahooSeeker|YandexBot|Yeti|YodaoBot|YoudaoBot|ZyBorg|Twitterbot/i;

    return;
}

__END__

=pod

=head1 NAME

HTTP::BrowserDetect::isRobot - test if the user-agent is a robot or not

=head1 VERSION

version 0.01

=head1 SYNOPSIS

    use HTTP::BrowserDetect::isRobot 'is_robot';

    if ( is_robot('Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)') ) {
        print "Yes\n";
    }

=head1 DESCRIPTION

extends L<HTTP::BrowserDetect> with more robots detecting.

inspired by L<Plack::Middleware::BotDetector>

=head1 METHODS

=head2 is_robot

take User-Agent as the only argument. return 1 if yes.

the regexp is quite incomplete. patches welcome.

1;

=head1 AUTHOR

Fayland Lam <fayland@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Fayland Lam.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

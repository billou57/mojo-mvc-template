use strict;
use warnings;

use Mojo::Base -strict;
use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('MyApp');
$t->get_ok('/')->status_is(200)->content_like(qr/Mojolicious/i);
$t->get_ok('/incvalue')->status_is(200)->content_like(qr/1/i);
$t->get_ok('/value')->status_is(200)->content_like(qr/1/i);
$t->get_ok('/api/log')->status_is(200);
$t->get_ok('/api/sample')->status_is(200);
$t->get_ok('/write_sqlitedb')->status_is(500);
$t->get_ok('/read_sqlitedb')->status_is(200);
$t->get_ok('/get_restapi_blocking')->status_is(200);
$t->get_ok('/get_restapi_nonblocking')->status_is(200);


done_testing();

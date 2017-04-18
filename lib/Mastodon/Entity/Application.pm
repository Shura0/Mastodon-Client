package Mastodon::Entity::Application;

our $VERSION = '0.007';

use strict;
use warnings;

use Moo;
with 'Mastodon::Role::Entity';

use Types::Standard qw( Str );
use Mastodon::Types qw( URI );

has name     => ( is => 'ro', isa => Str, required => 1 );
has website  => ( is => 'ro', isa => Maybe[URI], coerce => 1);

1;

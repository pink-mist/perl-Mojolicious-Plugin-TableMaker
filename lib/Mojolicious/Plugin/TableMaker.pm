use strict;
use warnings;
package Mojolicious::Plugin::TableMaker;

use Mojo::Base 'Mojolicious::Plugin';

sub register {
  my ($self, $app, $conf) = @_;

  $app->helper(
    table => sub {
      return Mojo::HTML::Table->new(@_);
    }
  );
}

1;

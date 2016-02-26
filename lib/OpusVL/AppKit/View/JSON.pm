package OpusVL::AppKit::View::JSON;
use base qw( Catalyst::View::JSON );

=head1 NAME

OpusVL::AppKit::View::JSON

=head1 DESCRIPTION

This is our JSON view.  It only exposes the json key from the stash.

=cut

__PACKAGE__->config(
    expose_stash => 'json',
);

=cut

1;

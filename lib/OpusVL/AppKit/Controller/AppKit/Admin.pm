package OpusVL::AppKit::Controller::AppKit::Admin;

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; };
with 'OpusVL::AppKit::RolesFor::Controller::GUI';

=head2 auto

=cut

sub auto
    : Action
    : AppKitFeature('Role Administration,User Administration,Password Change')
{
    my ( $self, $c ) = @_;

    # add to the bread crumb..
    push ( @{ $c->stash->{breadcrumbs} }, { name => 'Settings', url => $c->uri_for( $c->controller('AppKit::Admin')->action_for('index') ) } );
}

=head2 index

    Default action for this controller.

=cut

sub index
    : Path
    : Args(0)
    : AppKitFeature('Role Administration,User Administration,Password Change')
{
    my ( $self, $c ) = @_;

}

=head1 COPYRIGHT and LICENSE

Copyright (C) 2010 OpusVL

This software is licensed according to the "IP Assignment Schedule" provided with the development project.

=cut

1;
__END__

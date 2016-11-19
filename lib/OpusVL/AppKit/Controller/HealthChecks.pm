package OpusVL::AppKit::Controller::HealthChecks;

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; };
with 'OpusVL::AppKit::RolesFor::Controller::GUI';

__PACKAGE__->config(
    appkit_name => 'Search',
);

sub healthz
    : Local
    : AppKitFeature('Kubernetes Health Checks')
{
    my ($self, $c) = @_;
    # FIXME: should we be doing db health checks here?
    $c->res->body('OK');
}

sub readiness
    : Local
    : AppKitFeature('Kubernetes Health Checks')
{
    my ($self, $c) = @_;
    # do an auto check on the models.
    # provide some sort of way to hook that.
    # prod memcache/session cache
    # test DBIC models
    $c->res->body('OK');
}

1;

=head1 DESCRIPTION

Provides end points for checking the health of the application.

To make them publicly accessable add them to the PUBLIC role.

=head1 METHODS

=head2 healthz

Check to be performed regularly.

=head2 readiness

Check to be performed to figure out when the server is ready to serve a request.

=head1 ATTRIBUTES

=cut

package OpusVL::AppKit::Controller::AppKit;

use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; };
with 'OpusVL::AppKit::RolesFor::Controller::GUI';

__PACKAGE__->config
(
    appkit_myclass              => 'OpusVL::AppKit',
);


=head2 auto
=cut
sub auto 
    : Action 
    : AppKitFeature('Password Change,User Administration,Role Administration')
{
    my ($self, $c) = @_;
}

=cut
1;
__END__

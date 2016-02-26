package OpusVL::AppKit::View::Email;

use strict;
use base 'Catalyst::View::Email';

__PACKAGE__->config(
    stash_key => 'email'
);

=head1 NAME

OpusVL::AppKit::View::Email - Email View for OpusVL::AppKit

=head1 DESCRIPTION

View for sending email from OpusVL::AppKit. 

=head1 SEE ALSO
L<OpusVL::AppKit>

=cut
1;
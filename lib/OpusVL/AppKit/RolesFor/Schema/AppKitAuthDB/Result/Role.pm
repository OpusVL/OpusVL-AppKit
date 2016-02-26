package OpusVL::AppKit::RolesFor::Schema::AppKitAuthDB::Result::Role;

use strict;
use Moose::Role;

=head2 setup_authdb

=cut

sub setup_authdb
{
    my $class = shift;

    $class->many_to_many( users => 'users_roles', 'user');
    $class->many_to_many( aclrules => 'aclrule_roles', 'aclrule_id');

}

=head2 can_change_any_role

Set the a flag to indicate the role is allowed to modify any other role.

=cut

sub can_change_any_role
{
    my $self = shift;
    if(@_)
    {
        # set it 
        if(shift)
        {
            if($self->search_related('role_admin')->count == 0)
            {
                $self->create_related('role_admin', {});
            }
            $self->delete_related('roles_allowed_roles');
        }
        else
        {
            $self->delete_related('role_admin');
        }
    }
    else
    {
        # return it.
        return $self->search_related('role_admin')->count > 0;
    }
}

1;
__END__

package OpusVL::AppKit::RolesFor::Schema::DataInitialisation;

use Moose::Role;

sub deploy_with_data
{
    my $self = shift;
    $self->deploy;
    for my $resultset ($self->sources)
    {
        my $rs = $self->resultset($resultset);
        $rs->initdb if $rs->can('initdb');
        $rs->initdb_populate if $rs->can('initdb_populate');
    }
    return $self;
}

sub clear_dataset
{
    my $self = shift;
    for my $resultset ($self->sources)
    {
        my $rs = $self->resultset($resultset);
        $rs->clear_dataset if $rs->can('clear_dataset');
    }
    return $self;
}

1;

=head1 NAME

OpusVL::AppKit::RolesFor::Schema::DataInitialisation - Deploy with data

=head1 DESCRIPTION

This role allows you to extend your DBIx::Class::Schema with a deploy_with_data
method that can be used instead of deploy to deploy and populate your database
with some initial data.  This is typically used to put a basic user into an auth
database and setting up any standard system parameters that are required.

    package My::Schema;
    use Moose;
    use namespace::autoclean;
    extends 'DBIx::Class::Schema';
    with 'OpusVL::AppKit::RolesFor::Schema::DataInitialisation';
    __PACKAGE__->load_namespaces;
    __PACKAGE__->meta->make_immutable;
    1;


=head1 METHODS

=head2 deploy_with_data

This method does a deploy and then checks your resultsets for initdb methods to call.
If they are found they are called.  This allows you to populate your newly deployed
database with initial data.

=head1 LICENSE AND COPYRIGHT

Copyright 2012 OpusVL.

This software is licensed according to the "IP Assignment Schedule" provided with the development project.

=cut

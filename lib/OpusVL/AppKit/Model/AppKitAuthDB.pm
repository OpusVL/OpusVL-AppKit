package OpusVL::AppKit::Model::AppKitAuthDB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'OpusVL::AppKit::Schema::AppKitAuthDB',
    
    connect_info => {
        dsn => 'dbi:SQLite:./t/lib/auto/TestApp/root/db/appkit_auth.db',
        user => '',
        password => '',
    }
);

=head1 NAME

OpusVL::AppKit::Model::AppKitAuthDB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<OpusVL::AppKit>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<OpusVL::AppKit::Schema::AppKitAuthDB>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.38

=cut
1;

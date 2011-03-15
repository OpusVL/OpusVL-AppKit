package OpusVL::AppKit::Schema::AppKitAuthDB::Result::Role;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 NAME

OpusVL::AppKit::Schema::AppKitAuthDB::Result::Role

=cut

__PACKAGE__->table("role");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 role

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "role",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 users_roles

Type: has_many

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::UsersRole>

=cut

__PACKAGE__->has_many(
  "users_roles",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::UsersRole",
  { "foreign.role_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 aclrule_roles

Type: has_many

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::AclruleRole>

=cut

__PACKAGE__->has_many(
  "aclrule_roles",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::AclruleRole",
  { "foreign.role_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roles_allowed_roles_allowed

Type: has_many

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::RoleAllowed>

=cut

__PACKAGE__->has_many(
  "roles_allowed_roles_allowed",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::RoleAllowed",
  { "foreign.role_allowed" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 roles_allowed_roles

Type: has_many

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::RoleAllowed>

=cut

__PACKAGE__->has_many(
  "roles_allowed_roles",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::RoleAllowed",
  { "foreign.role" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 role_admin

Type: might_have

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::RoleAdmin>

=cut

__PACKAGE__->might_have(
  "role_admin",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::RoleAdmin",
  { "foreign.role_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


=head2 aclfeature_roles

Type: has_many

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::AclfeatureRole>

=cut

__PACKAGE__->has_many(
  "aclfeature_roles",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::AclfeatureRole",
  { "foreign.role_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);



# Created by DBIx::Class::Schema::Loader v0.07000 @ 2010-05-24 12:44:30
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T2FAHyM0e4W0uyrAkJ34Jg

use Moose;
use OpusVL::AppKit::RolesFor::Schema::AppKitAuthDB::Result::Role;
with 'OpusVL::AppKit::RolesFor::Schema::AppKitAuthDB::Result::Role';
__PACKAGE__->setup_authdb;

=head1 COPYRIGHT and LICENSE

Copyright (C) 2010 OpusVL

This software is licensed according to the "IP Assignment Schedule" provided with the development project.

=cut

# You can replace this text with custom content, and it will be preserved on regeneration
1;

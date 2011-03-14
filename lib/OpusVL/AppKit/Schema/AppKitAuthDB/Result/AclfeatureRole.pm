package OpusVL::AppKit::Schema::AppKitAuthDB::Result::AclfeatureRole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

OpusVL::AppKit::Schema::AppKitAuthDB::Result::AclfeatureRole

=cut

__PACKAGE__->table("aclfeature_role");

=head1 ACCESSORS

=head2 aclfeature_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 role_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "aclfeature_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "role_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("aclfeature_id", "role_id");

=head1 RELATIONS

=head2 role

Type: belongs_to

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::Role>

=cut

__PACKAGE__->belongs_to(
  "role",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::Role",
  { id => "role_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 aclfeature

Type: belongs_to

Related object: L<OpusVL::AppKit::Schema::AppKitAuthDB::Result::Aclfeature>

=cut

__PACKAGE__->belongs_to(
  "aclfeature",
  "OpusVL::AppKit::Schema::AppKitAuthDB::Result::Aclfeature",
  { id => "aclfeature_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2011-03-14 12:26:54
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:zPS+/kIqsqFWtQGjpZDqew


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;

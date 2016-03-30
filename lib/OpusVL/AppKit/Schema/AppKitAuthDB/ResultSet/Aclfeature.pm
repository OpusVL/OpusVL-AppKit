package OpusVL::AppKit::Schema::AppKitAuthDB::ResultSet::Aclfeature;

use strict;
use warnings;

use base 'DBIx::Class::ResultSet';

sub descriptions
{
    my $self = shift;
    my @all = $self->all;
    my %names;
    for my $f (@all)
    {
        my ($app, $feature) = $f->feature =~ m|^(.+)/(.*)$|;
        # auto vivification?
        $names{$app}->{$feature} = $f->feature_description;
    }
    return \%names;
}

1;
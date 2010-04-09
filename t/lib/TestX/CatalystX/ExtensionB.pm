package TestX::CatalystX::ExtensionB;

use Moose::Role;
use CatalystX::InjectComponent;
use namespace::autoclean;

our $VERSION = '0.01';

after 'setup_components' => sub
{
    my $class = shift;

    CatalystX::InjectComponent->inject
    (   
        into        => $class,
        component   => 'TestX::CatalystX::ExtensionB::Controller::ExtensionB',
        as          => 'Controller::ExtensionB'
    );

    CatalystX::InjectComponent->inject
    (   
        into        => $class,
        component   => 'TestX::CatalystX::ExtensionB::Model::BookDB',
        as          => 'Model::BookDB'
    );

    # Now we have injected the Controller & Model... lets alter the config to add paths for static
    # and template paths.

    my $config = $class->config;

    # .. get the path for this name space..
    my $path = File::ShareDir::module_dir( __PACKAGE__ );

    # .. add template dir into the config for View::AppKitTT...
    my $inc_path = $config->{'View::AppKitTT'}->{'INCLUDE_PATH'};
    push(@$inc_path, $path . '/root/templates' );
    $config->{'View::AppKitTT'}->{'INCLUDE_PATH'} = $inc_path;
    
    # .. add static dir into the config for Static::Simple..
    my $static_dirs = $config->{static}->{include_path};
    push(@$static_dirs, $path . '/root' );
    $config->{static}->{include_path} = $static_dirs;

};

1;


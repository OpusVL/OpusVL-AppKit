package OpusVL::AppKit;

=head1 NAME

OpusVL::AppKit - Catalyst based application

=head1 SYNOPSIS

    You use inherite the OpusVL::AppKit by making the following files to your MyApp.

    F<MyApp.pm>:

        package MyApp;
        use strict;
        use warnings;
        use MyApp::Builder;
        
        MyApp::Builder->new(appname => __PACKAGE__)->bootstrap;

    F<MyApp/Builder.pm>:

        package MyApp::Builder;
        use Moose;
        extends 'OpusVL::AppKit::Builder';
        override _build_superclasses => sub 
        {
            return [ 'OpusVL::AppKit' ]
        };

    F<myapp.conf>:
    
        <OpusVL::AppKit::Plugin::AppKit>
            access_denied   "access_notallowed"
            <acl_rules>
                somecontroller/someaction       "somerole"
                somecontroller/someaction       "someotherrole"
                somecontroller/someotheraction  "somerole"
            </acl_rules>
        </OpusVL::AppKit::Plugin::AppKit>
  


=head1 DESCRIPTION

    This is a Catalyst Application that was built with the intention of being inherited by using AppBuilder.

    You can do 2 things with thie application:
        1. Enable your catalyst app to use it.
        2. Add your catalyst app to it.

    The SYNOPSIS above shows how your can enable your catalyst app to use it (option 1).

    For option 2 .. Add your catalyst app to it.. see OpusVL::AppKit::Base::Controller::GUI.

=head1 SEE ALSO

    L<OpusVL::AppKit::Plugin::AppKit>,
    L<OpusVL::AppKit::Base::Controller::GUI>,
    L<OpusVL::AppKit::Controller::Root>, 
    L<Catalyst>

=head1 SUPPORT

If you require assistance, support, or further development of this software, please contact OpusVL using the details below:

=over 4

=item *

Telephone: +44 (0)1788 298 410

=item *

Email: community@opusvl.com

=item *

Web: L<http://opusvl.com>

=back

=cut

##################################################################################################################################
# use lines #
##################################################################################################################################

use strict;
use warnings;
use OpusVL::AppKit::Builder;
our $VERSION = '2.18';

##################################################################################################################################
# main #
##################################################################################################################################

# Make the Builder object and run the ->bootstrap so this becomes a AppBuilder inheritable application.. see: 
#   OpusVL::AppKit::Builder 
#   CatalystX::AppBuilder

my $builder = OpusVL::AppKit::Builder->new( appname => __PACKAGE__, version => $VERSION );
$builder->bootstrap;

##################################################################################################################################
1;

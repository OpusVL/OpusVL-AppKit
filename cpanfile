requires "Catalyst::Action::REST" => "0";
requires "Catalyst::Action::RenderView" => "0";
requires "Catalyst::Authentication::Store::DBIx::Class" => "0";
requires "Catalyst::Controller::HTML::FormFu" => "0";
requires "Catalyst::Model::DBIC::Schema" => "0";
requires "Catalyst::Plugin::Authentication" => "0";
requires "Catalyst::Plugin::Authorization::ACL" => "0";
requires "Catalyst::Plugin::Authorization::Roles" => "0";
requires "Catalyst::Plugin::Cache" => "0";
requires "Catalyst::Plugin::ConfigLoader" => "0";
requires "Catalyst::Plugin::CustomErrorMessage" => "0";
requires "Catalyst::Plugin::Session" => "0";
requires "Catalyst::Plugin::Session::State::Cookie" => "0";
requires "Catalyst::Plugin::Session::Store::FastMmap" => "0";
requires "Catalyst::Plugin::Static::Simple" => "0.3";
requires "Catalyst::Plugin::Unicode::Encoding" => "0";
requires "Catalyst::Runtime" => "5.90051";
requires "Catalyst::View::Download" => "0";
requires "Catalyst::View::Email" => "0";
requires "Catalyst::View::Excel::Template::Plus" => "0";
requires "Catalyst::View::JSON" => "0";
requires "Catalyst::View::PDF::Reuse" => "0";
requires "Catalyst::View::TT" => "0";
requires "Catalyst::View::TT::Alloy" => "0";
requires "CatalystX::AppBuilder" => "0.00011";
requires "CatalystX::SimpleLogin" => "0";
requires "CatalystX::VirtualComponents" => "0";
requires "Child" => "0";
requires "Config::General" => "0";
requires "Crypt::Eksblowfish::Bcrypt" => "0";
requires "DBIx::Class::EncodedColumn::Crypt::Eksblowfish::Bcrypt" => "0";
requires "DBIx::Class::TimeStamp" => "0";
requires "Devel::InheritNamespace" => "0.00003";
requires "File::ShareDir" => "0";
requires "File::Spec" => "0";
requires "Getopt::Compact" => "0";
requires "HTML::FormFu::Model::DBIC" => "0";
requires "List::Util" => "0";
requires "Moose" => "0";
requires "Net::LDAP" => "0";
requires "Plack" => "0";
requires "String::MkPasswd" => "0";
requires "Template::Alloy" => "1.020";
requires "Template::AutoFilter" => "0";
requires "Template::Plugin::DateTime" => "0";
requires "Test::DBIx::Class" => "0";
requires "Test::Most" => "0";
requires "Tree::Simple" => "0";
requires "Tree::Simple::View" => "0";
requires "Tree::Simple::VisitorFactory" => "0";
requires "Try::Tiny" => "0";
requires "XML::Simple" => "0";
requires "parent" => "0";
requires "experimental" => 0;
requires "Catalyst::Plugin::ConfigLoader::Environment" => 0;

on 'build' => sub {
  requires "ExtUtils::MakeMaker" => "6.36";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};
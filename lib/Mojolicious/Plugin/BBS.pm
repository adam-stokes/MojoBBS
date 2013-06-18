package Mojolicious::Plugin::BBS;

use strictures 1;
use Mojo::Base 'Mojolicious::Plugin';
use File::Basename 'dirname';
use File::Spec::Functions 'catdir';


# VERSION

my %defaults = (

    # Mongo collection
    collection => 'mojobbs',
);

sub register {
    my ($self, $app) = @_;
    my (%conf) = (%defaults, %{$_[2] || {}});

    my $base = catdir(dirname(__FILE__), 'BBSAssets');
    push @{$app->renderer->paths}, catdir($base, 'templates');
    push @{$app->static->paths},   catdir($base, 'public');

    push @{$app->renderer->classes}, __PACKAGE__;
    push @{$app->static->classes},   __PACKAGE__;

    $app->helper(bbsconf => sub { \%conf });
    return;

}

1;
__END__

=head1 NAME

Mojolicious::Plugin::BBS - Mojolicious Plugin

=head1 SYNOPSIS

  # Mojolicious
  $self->plugin('BBS');

  # Mojolicious::Lite
  plugin 'BBS';

=head1 DESCRIPTION

L<Mojolicious::Plugin::BBS> is a L<Mojolicious> plugin.

=head1 METHODS

L<Mojolicious::Plugin::BBS> inherits all methods from
L<Mojolicious::Plugin> and implements the following new ones.

=head2 register

  $plugin->register(Mojolicious->new);

Register plugin in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicio.us>.

=cut

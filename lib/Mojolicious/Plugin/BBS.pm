package Mojolicious::Plugin::BBS;
use Mojo::Base 'Mojolicious::Plugin';

# VERSION

sub register {
  my ($self, $app) = @_;
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

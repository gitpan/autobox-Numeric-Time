package autobox::Numeric::Time;

use strict;
use warnings;
use Carp;

use autobox;

our $VERSION = '0.01';

sub SCALAR::seconds {
    return $_[0];
}
*SCALAR::second = \&SCALAR::seconds;

sub SCALAR::minutes {
    return $_[0] * 60;
}
*SCALAR::minute = \&SCALAR::minutes;

sub SCALAR::hours {
    return $_[0] * 3600;
}
*SCALAR::hour = \&SCALAR::hours;

sub SCALAR::days {
    return $_[0] * 24->hours;
}
*SCALAR::day = \&SCALAR::days;

sub SCALAR::weeks {
    return $_[0] * 7->days;
}
*SCALAR::week = \&SCALAR::weeks;

sub SCALAR::fortnights {
    return $_[0] * 2->weeks;
}
*SCALAR::fortnight = \&SCALAR::fortnights;

sub SCALAR::months {
    return $_[0] * 30->days;
}
*SCALAR::month = \&SCALAR::months;

sub SCALAR::years {
    return $_[0] * 365.25->days;
}
*SCALAR::year = \&SCALAR::years;

1;

__END__

=for stopwords DateTime ActiveSupport autobox

=head1 NAME

autobox::Numeric::Time - ActiveSupport equivalent to Perl numeric variables

=head1 SYNOPSIS

    use autobox;
    use autobox::Numeric::Time;

    print 2->seconds; # 2
    print 3->minutes; # 180
    print 3->hours;   # 10800
    print 2->days;    # 172800

=head1 DESCRIPTION

autobox::Numeric::Time is an autobox module to add Time-related
methods to core integer values by using constant overloading. Inspired
by ActiveSupport (Rails) Core extensions to Numeric values and
L<autobox::DateTime::Duration>.

=head1 METHODS

=over 4

=item seconds, second

=item minutes, minute

=item hours, hour

=item days, day

=item weeks, week

=item fortnights, fortnight

=item months, month

=item years, year

=back

=head1 CAVEATS

This module does not support following methods:

  ago
  until
  since
  from_now

if you need, try to use L<autobox::DateTime::Duration>.

=head1 SEE ALSO

L<http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/Numeric/Time.html>

L<autobox>, L<autobox::DateTime::Duration>

=head1 AUTHOR

HIROSE Masaaki, C<< <hirose31@gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-autobox-numeric-time@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.  I will be notified, and then you'll automatically be
notified of progress on your bug as I make changes.

=head1 COPYRIGHT & LICENSE

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut


package AI::Genetic::Parallel::Individual;

use Moose;
use namespace::autoclean;

=head1 NAME

AI::Genetic::Parallel::Individual - class for indiviudal member of AI::Genetic::Parallel

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Represents an indiviudal for use in AI::Genetic::Parallel

    use AI::Genetic::Parallel::Individual;

    my $individual = AI::Genetic::Parallel::Individual->new(
        dna => '01010101110101',
    );

    #  update the individual fitness
    $individual->fitness( 12 );

    #  mark individual as elite
    $individual->elite( 1 );

=head1 METHODS

=head2 dna

store the DNA/chromosome information here

=cut

has dna => ( is => 'rw' );

=head2 elite

mark this indiviudal as being elite, bool [0|1] - default 0

=cut

has elite => ( is => 'rw', isa => 'Bool', default => 0 );

=head2 death_wish

mark this indiviudal as ready to be killed, bool [0|1] - default 0.  When the reaper is let loose on the population this member, if marked, will be terminated.

=cut

has death_wish => ( is => 'rw', isa => 'Bool', default => 0 );

=head2 fitness

attribute for storing individual fitness

=cut

has fitness => ( is => 'rw' );

=head1 AUTHOR

Adam Wohld, C<< <adam at radarlabs.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-ai-genetic-parallel-individual at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=AI-Genetic-Parallel-Individual>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc AI::Genetic::Parallel::Individual


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=AI-Genetic-Parallel-Individual>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/AI-Genetic-Parallel-Individual>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/AI-Genetic-Parallel-Individual>

=item * Search CPAN

L<http://search.cpan.org/dist/AI-Genetic-Parallel-Individual/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2018 Adam Wohld.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

__PACKAGE__->meta->make_immutable;

1; # End of AI::Genetic::Parallel::Individual

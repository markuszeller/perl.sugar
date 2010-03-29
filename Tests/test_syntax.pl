=head1 Perl Syntax Test File

Test file for Perl Syntax

=head2 Author

Contributed by I<James Sinclair>

=over
=item My email address is mailto:jrsinclair@gmail.com
=back

=cut

#
# Test subroutine/function definition

sub my_function {
   my ($param1, $param2) = @_;
   
   # IF statment
   if ($param1 eq $param2) {
       print('Parameter one equals parameter two' . "\n");
   }
   
   # ELSIF statement
   elsif ($param1 ne $param2) {
       print("Parameter one does not equal parameter two\n");
   }
   
   # ELSE statement
   else {
       print("Something very strange is going on.");
   }
   
   # FOR loop
   my $j;
   for my $i (1..10) {
       $j = 10 - $i;
   }
   
   # Define an anonymous function within a function
   my $anon_func = sub {
       my $param = $_;
       $param =~ s/\bawesome\b/magnificent/g;
       return $param;
   }
   
}
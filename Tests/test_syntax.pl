
=head1 Perl Syntax Test File

Test file for Perl Syntax

=head2 Author

Contributed by I<James Sinclair>

=over
=item My email address is mailto:jrsinclair@gmail.com
=back

=cut

# This is a multi-line comment
# that has been created by putting
# hashes at the start of each line

#
# Test subroutine/function definition
sub my_function {
    my ( $param1, $param2 ) = @_;

    # IF statment
    if ( $param1 eq $param2 ) {
        print( 'Parameter one equals parameter two' . "\n" );
    }

    # ELSIF statement
    elsif ( $param1 ne $param2 ) {
        print("Parameter one does not equal parameter two\n");
    }

    # ELSE statement
    else {
        print("Something very strange is going on.");
    }

    # FOR loop
    my $j;
    for my $i ( 1 .. 10 ) {
        $j = 10 - $i;
    }

    # FOREACH loop
    for my $i ( 1 .. 10 ) {
        $j = 10 - $i;
    }

    # Define an anonymous function within a function
    my $anon_func = sub {
        my $param = $_;
        $param =~ s/\bawesome\b/magnificent/g;
        return $param;
    };

    # Backticks
    `echo "Hello world"`

}

#
# Another subroutine with lots of nesting
sub function_number_two {

    # Nested IF statements
    if ( 1 == 1 ) {
        if ( 2 != 3 ) {

            # It truly is amazing
        }
    }

    # Nested FOR statments
    for my $a ( 1 .. 10 ) {
        foreach my $b ( 1 .. 20 ) {

            # Nest level 2
        }
    }

    # Nested function definition
    sub sub_sub_func {
        return 'Found the sub function';
    }

    return "Hello World\n";
}

#
# Subroutine with hash references
sub hashrefing_func {
    my $b        = 'b';
    my $hash_ref = {
        'a' => 1,
        'b' => $b,
        'c' => function_number_two()
    };

    $hash_ref->{'d'} = $hash_ref->{'a'} . $hash_ref->{'b'};
}

#
# Subroutine with lists and tricky regular expressions
sub list_func {
    my @list_var = ( 'a', 'b', 'c' );
    my $last_idx = $#list_var;

    if ( $last_idx =~ /^\#/xsm ) {
        print "Starts with a hash";
    }

    ( $last_idx =~ /\d+/xsm );    # A normal regular expression
}

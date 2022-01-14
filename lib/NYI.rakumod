sub NYI(str $feature) is export { Failure.new: X::NYI.new: :$feature }

sub EXPORT() {
    CORE::.EXISTS-KEY('&NYI')
      ?? Map.new
      !! Map.new( ('&NYI' => &NYI) )
}

=begin pod

=head1 NAME

NYI - Provide shortcut to X::NYI

=head1 SYNOPSIS

=begin code :lang<raku>

use NYI;

multi sub frobnicate("insert", |) { NYI "insert a frob" }

=end code

=head1 DESCRIPTION

Provide a shortcut to doing:

=begin code :lang<raku>

Failure.new: X::NYI.new: feature => "feature";

=end code

This can be used as a return value in a subroutine or method:

=begin code :lang<raku>

multi method frobnicate("insert", |) { NYI "insert a frob" }

=end code

Or to fail or throw immediately:

=begin code :lang<raku>

fail NYI("insert a frob");

NYI("insert a frob").throw;

=end code

Reasons for using this subroutine are:

=item reduce bytecode size of hot code paths

=item better readability because of less noise

Should the core of the Raku Programming Language already provide a C<NYI>
subroutine, then this module will become a no-op.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/NYI .
Comments and Pull Requests are welcome.

=head1 COPYRIGHT AND LICENSE

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4

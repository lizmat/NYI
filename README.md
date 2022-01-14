[![Actions Status](https://github.com/lizmat/NYI/workflows/test/badge.svg)](https://github.com/lizmat/NYI/actions)

NAME
====

NYI - Provide shortcut to X::NYI

SYNOPSIS
========

```raku
use NYI;

multi sub frobnicate("insert", |) { NYI "insert a frob" }
```

DESCRIPTION
===========

Provide a shortcut to doing:

```raku
Failure.new: X::NYI.new: feature => "feature";
```

This can be used as a return value in a subroutine or method:

```raku
multi method frobnicate("insert", |) { NYI "insert a frob" }
```

Or to fail or throw immediately:

```raku
fail NYI("insert a frob");

NYI("insert a frob").throw;
```

Reasons for using this subroutine are:

  * reduce bytecode size of hot code paths

  * better readability because of less noise

Should the core of the Raku Programming Language already provide a `NYI` subroutine, then this module will become a no-op.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/NYI . Comments and Pull Requests are welcome.

COPYRIGHT AND LICENSE
=====================

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.


rmshit
==========================================

Tired of having unwanted configs, directories and bloat messing with your home
dir?

So was I.

rmshit uses inotify to watch your $HOME (or, alternatively, any other dir) for
unwanted files and instantly deletes them upon creation.
Since it's a daemon, you can start it at boot time and know that'll keep your
directories clean.


To install the dependencies:
    # cpan Linux::Inotify2 Working::Daemon

or use your package manager of choice.

To install rmshit:
    $ perl Makefile.PL
    $ make
    # make install

You'll most likely want to edit the @shittyfiles array in rmshit.conf.
The examples contain sane defaults:
    '.Xauthority',  # Xorg auth stuff
    '.esd_auth',    # Firefox will create this when you right click somewhere
    '.adobe',       # Flash crap
    '.macromedia',  # Flash crap
    'Desktop',      # The stupid dir that Firefox creates
along with my own set of shitty files.

When edited to your liking, copy it to $XDG_CONFIG_HOME/rmshit/rmshit.conf or
$HOME/.local/rmshit/rmshit.conf:
    $ mkdir $XDG_CONFIG_HOME/rmshit && cp rmshift.conf $XDG_CONFIG_HOME/rmshit

To run rmshit:
    $ rmshit

License
=======
Copyright (C) 2010 Magnus Woldrich

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License, version 2, as published by the
Free Software Foundation

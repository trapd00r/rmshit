rmshit
==========================================

Tired of having unwanted configs, directories and bloat messing with your home
dir?

So was I.

rmshit uses inotify to watch your $HOME (or, alternatively, any other dir) for
unwanted files and instantly deletes them. 
Since it's a daemon, you can start it at boot time and know that'll keep your
directories clean.



To install the dependencies:

    # cpan Linux::Inotify2 Working::Daemon

or use your package manager of choice.

To install rmshit:
    $ perl Makefile.PL
    $ make
    # make install

You might want to edit the @shittyfiles array, containing unwanted files and
dirs. It looks like this right now:

    my @shittyfiles = qw(.dbus
                         .gconf
                         .gconfd
                         .links
                         .lynx
                         .local
                         .Xauthority
                         .dmenu_cache
                         .fmenu_cache
                         .esd_auth
                         .fehrc
                         .xsel.log
                         .ncmpcpp
                         Desktop
                         .adobe
                         .macromedia
                       );
To run rmshit:
    $ rmshit

License
=======
Copyright (C) 2010 Magnus Woldrich

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License, version 2, as published by the
Free Software Foundation

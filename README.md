postinstall
===========
Copyright (c) 2012 Scott Zeid  
<http://code.s.zeid.me/postinstall>

This is a set of scripts I use to (almost) automatically configure a Fedora
installation to my liking.

`postinstall` assumes a Fedora installation (version 17 at the time of this
writing) using GNOME Shell as its desktop environment.

Some things (like cron jobs in `cron.d/` and, in some places, GNOME desktop
configuration) are broken.  I need to fix these someday.

Usage
-----

    $ ./postinstall [step]

Running `postinstall` with no arguments runs all steps in `parts/` in order.
You can also pass the step name (minus the number at the beginning) to run
just that step.

Customization
-------------

Feel free to edit the steps and other files scattered throughout this
repository to your own personal tastes.  Maybe someday I'll add a proper
configuration mechanism.  If you do nothing, your computer will look a lot
like mine, and you may or may not like that.

Steps
-----

Steps are located in `steps/`.  Each step's filename is of the format
`##-name`, where `##` is a 2-digit number used for sorting.  The steps
are therefore sorted by number, then by name (case-sensitive).  If you
need more than 100 numbers, rename each step to use 3 (or more) digits.

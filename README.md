# gnu-make-alternative-targets

Simple demonstration of using a GNU Makefile to update
targets not by checking timestamps but by shelling out
and contacting a DB. Depending on the DB check result,
make will proceed to update the target or not.

To run it:

    chmod 755 dbcheck.sh
    make

Run ```make``` several times, at some random time it will
say that it has to build the target. Otherwise it will not
say anything, meaning that the target does not need to be rebuilt.

The simple shell script dbcheck.sh will not contact a DB but
rather will pretend that it did and 50% of the times say
that the result was to update the target and 50% that it
was not.

Based on an idea by Corion@Perlmonks

2020-02-11 04:31:32  Corion
I long for a make tool that can also use the results of SQL queries and maybe other stuff, instead of only using files. But maybe that's just not worth the hassle :-D

2020-02-11 04:34:45  bliako
Or depend on a DB result?

2020-02-11 04:34:34  bliako
autotools are using perl. You mean timestamping a DB reult?

2020-02-11 05:13:26  Corion
[bliako]: I think more around retrieving a timestamp from a DB result, or conditions like "if this query returns no rows" or stuff like that...


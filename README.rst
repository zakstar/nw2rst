README
======

Overview
--------

rst2nw is a noweb_ backend that processes noweb files and produces output in
reStructuredText_ format.  So the output can later be processed with tools
like docutils_ to produce HTML, ODT, LaTeX and other formats.

.. _noweb: http://www.cs.tufts.edu/~nr/noweb/
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
.. _docutils: http://docutils.sourceforge.net/

So, in summary, it is just a small tool to allow people write `Literate
Programming`_ using the reStructuredText_ language.

.. _Literate Programming: https://en.wikipedia.org/wiki/Literate_programming

Usage
-----

In this directory, type ``make``.  This might work for most versions of
``make``, from different operating systems.  It will produce two files:

``nw2rst.rst``
    The document generated that explains how ``nw2rst.sh`` works.

``nw2rst.sh``
    The nw2rst program.  It is a simple shell script that should in any Unix
    enviornment.

Take a look at the ``nw2rst.nw`` file to see an example of a document written
in reStructuredText for noweb processing.

To generate the reStructuredText file from a noweb file, use the option
``-backend`` of the ``noweave`` tool::

    noweave -backend nw2rst.sh input.nw > output.rst

Contact and bug report
----------------------

If you have any suggestions, bug report, etc., just open an issue in
http://github.com/silasdb/nw2rst.

You might want to visit my personal page at `silas.net.br`_ where you'll find
contact information.

.. _silas.net.br: http://silas.net.br/

TARGETS = nw2rst.sh nw2rst.rst

all: ${TARGETS}

nw2rst.sh: nw2rst.nw
	notangle -R$@ $? > $@.tmp
	mv $@.tmp $@
	chmod 755 $@

nw2rst.rst: nw2rst.nw
	noweave -backend ./nw2rst.sh $? > $@.tmp
	mv $@.tmp $@

# optional target
nw2rst.html: nw2rst.sh nw2rst.rst
	rst2html nw2rst.rst $@.tmp
	mv $@.tmp $@

.PHONY: clean
clean:
	rm -f ${TARGETS} *.tmp nw2rst.html

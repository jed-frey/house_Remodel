SH ?= $(wildcard *.sh)
MD ?= $(patsubst %.sh,%.md,${SH})

all: ${MD}

%.md: %.sh
# DEBUG ./${<}
	./${<} > ${@}

.PHONY: clean
clean:
	-rm -f *.md

.PHONY: lazy
lazy:
	make clean
	make all
	git commit -am "`date`"
	git push

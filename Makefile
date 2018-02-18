SH ?= $(wildcard *.sh)
MD ?= $(patsubst %.sh,%.md,${SH})

all: ${MD}

%.md: %.sh
# DEBUG ./${<}
	./${<} > ${@}

.PHONY: clean
clean:
	-rm -f *.md

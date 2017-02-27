PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all::	show-partitions

check::	show-partitions
	./show-partitions ${ARGS}

install:: show-partitions
	install -D show-partitions ${BINDIR}/show-partitions

uninstall::
	${RM} ${BINDIR}/show-partitions

INSTALLDIR="/usr/local"

default:
	echo "nothing to do"

install:
	sudo cp aware ${INSTALLDIR}/bin
	sudo mkdir -p ${INSTALLDIR}/man/man1
	sudo cp aware.1 ${INSTALLDIR}/man/man1

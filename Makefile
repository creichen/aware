INSTALLDIR="/usr/local"
PKGNAME=aware-`./aware -v | grep version | awk '{print $$3}'`
FILES=aware aware.1 README LICENSE Makefile

default:
	echo "nothing to do"

install:
	sudo cp aware ${INSTALLDIR}/bin
	sudo mkdir -p ${INSTALLDIR}/man/man1
	sudo cp aware.1 ${INSTALLDIR}/man/man1

release:
	mkdir ${PKGNAME}
	cp ${FILES} ${PKGNAME}
	tar cvfz ${PKGNAME}.tar.gz ${PKGNAME}

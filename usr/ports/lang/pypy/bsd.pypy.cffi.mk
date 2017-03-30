# $FreeBSD: tags/RELEASE_10_3_0/lang/pypy/bsd.pypy.cffi.mk 403361 2015-12-09 06:57:30Z dbn $

PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTFILES=

BUILD_DEPENDS+=	pypy:${PORTSDIR}/lang/pypy
RUN_DEPENDS+=	pypy:${PORTSDIR}/lang/pypy

PLIST_FILES=	%%PYPY_DIR%%/lib_pypy/${CFFI_MODULE}_cffi.pypy-%%PYPY_CFFI_VER%%.so

CFFI_MODULE?=	_${PORTNAME}

PYTHON_PORTVERSION=	4.0.1
PYTHON_PKGNAMEPREFIX=	pypy-
PYTHON_CMD=	${LOCALBASE}/bin/pypy

.include "${.CURDIR}/../../lang/pypy/bsd.pypy.mk"

do-build:
	${CP} ${LOCALBASE}/${PYPY_DIR}/lib_pypy/${CFFI_MODULE}_build.py ${WRKDIR}/${PORTNAME}.py
	(cd ${WRKDIR}; \
		${PYTHON_CMD} -c "from ${PORTNAME} import ${CFFI_NAME} as ffi; ffi.compile('${WRKDIR}');")

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/${PYPY_DIR}/lib_pypy/`dirname ${CFFI_MODULE}`/
	${INSTALL_LIB} ${WRKDIR}/${CFFI_MODULE}_cffi.pypy-${PYPY_CFFI_VER}.so ${STAGEDIR}${PREFIX}/${PYPY_DIR}/lib_pypy/`dirname ${CFFI_MODULE}`/
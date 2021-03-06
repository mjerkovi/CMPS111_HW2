# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/security/py-oauthlib/Makefile 404483 2015-12-25 22:35:43Z antoine $

PORTNAME=	oauthlib
PORTVERSION=	0.7.2
PORTREVISION=	1
CATEGORIES=	security net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	RFC-compliant Python implementation of OAuth

LICENSE=	BSD3CLAUSE

TEST_DEPENDS=	nosetests:${PORTSDIR}/devel/py-nose \
		${PYTHON_PKGNAMEPREFIX}mock>0:${PORTSDIR}/devel/py-mock \
		${PYTHON_PKGNAMEPREFIX}pycrypto>0:${PORTSDIR}/security/py-pycrypto \
		${PYTHON_PKGNAMEPREFIX}pyjwt>0:${PORTSDIR}/www/py-pyjwt \
		${PYTHON_PKGNAMEPREFIX}blinker>0:${PORTSDIR}/devel/py-blinker

OPTIONS_DEFINE=		RSA SIGNALS SIGNEDTOKEN TESTS
OPTIONS_DEFAULT=	RSA SIGNALS SIGNEDTOKEN

RSA_DESC=			Enable RSA Support
RSA_RUN_DEPENDS=		${PYTHON_PKGNAMEPREFIX}pycrypto>0:${PORTSDIR}/security/py-pycrypto

SIGNALS_DESC=			Enable signal support
SIGNALS_RUN_DEPENDS=		${PYTHON_PKGNAMEPREFIX}blinker>0:${PORTSDIR}/devel/py-blinker

SIGNEDTOKEN_DESC=		Support for Signed Token
SIGNEDTOKEN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pycrypto>0:${PORTSDIR}/security/py-pycrypto \
				${PYTHON_PKGNAMEPREFIX}pyjwt>0:${PORTSDIR}/www/py-pyjwt

TESTS_DESC=			Include test suite dependencies
TESTS_BUILD_DEPENDS=		${TEST_DEPENDS}

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 3000
TEST_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}unittest2>0:${PORTSDIR}/devel/py-unittest2
.endif

post-extract:
	@${CHMOD} -R a+rX ${WRKSRC}

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} test

.include <bsd.port.post.mk>

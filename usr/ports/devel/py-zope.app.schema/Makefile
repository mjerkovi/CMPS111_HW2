# $FreeBSD: tags/RELEASE_10_3_0/devel/py-zope.app.schema/Makefile 371280 2014-10-20 16:04:12Z mva $

PORTNAME=	zope.app.schema
PORTVERSION=	3.5.0
PORTREVISION=	1
CATEGORIES=	devel python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	zope

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Component Architecture based Vocabulary Registry

LICENSE=	ZPL21

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zope.component>=0:${PORTSDIR}/devel/py-zope.component \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=0:${PORTSDIR}/devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}zope.schema>=0:${PORTSDIR}/devel/py-zope.schema

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>

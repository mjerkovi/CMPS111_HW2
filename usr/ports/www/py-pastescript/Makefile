# Created by: Dryice Liu	<dryice@dryice.name>
# $FreeBSD: tags/RELEASE_10_3_0/www/py-pastescript/Makefile 396641 2015-09-11 02:37:25Z wen $

PORTNAME=	PasteScript
PORTVERSION=	1.7.5
PORTREVISION=	2
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	python@FreeBSD.org
COMMENT=	Pluggable command-line frontend

LICENSE=	MIT

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}cheetah>=2.0.1:${PORTSDIR}/devel/py-cheetah \
		${PYTHON_PKGNAMEPREFIX}flup>0:${PORTSDIR}/www/py-flup \
		${PYTHON_PKGNAMEPREFIX}Paste>=1.7.2:${PORTSDIR}/www/py-paste \
		${PYTHON_PKGNAMEPREFIX}PasteDeploy>=1.3.2:${PORTSDIR}/www/py-pastedeploy \
		${PYTHON_PKGNAMEPREFIX}wsgiutils>0:${PORTSDIR}/devel/py-wsgiutils
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		python
USE_PYTHON=	autoplist distutils

post-extract:
		${RM} -r ${WRKSRC}/tests

.include <bsd.port.mk>

# Created by: Antoine Brodin <antoine@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/security/py-python-registry/Makefile 393196 2015-07-29 22:09:53Z antoine $

PORTNAME=	python-registry
PORTVERSION=	1.1.0
CATEGORIES=	security devel python
MASTER_SITES=	LOCAL/antoine
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	antoine@FreeBSD.org
COMMENT=	Read access to Windows Registry files

LICENSE=	APACHE20

USE_GITHUB=	yes
GH_ACCOUNT=	williballenthin

USES=		python shebangfix
USE_PYTHON=	distutils autoplist
SHEBANG_FILES=	samples/*.py
python_OLD_CMD=	.*

OPTIONS_DEFINE=	DOCS EXAMPLES

PORTDOCS=	*
PORTEXAMPLES=	*

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 3400
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}enum34>=0:${PORTSDIR}/devel/py-enum34
.endif

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/CHANGELOG.TXT ${WRKSRC}/CONTRIBUTORS.TXT ${WRKSRC}/README.MD \
		${WRKSRC}/documentation/* ${STAGEDIR}${DOCSDIR}
	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/*.py ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.post.mk>

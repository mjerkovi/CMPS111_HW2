# Created by: Edwin Groothuis <edwin@mavetju.org>
# $FreeBSD: tags/RELEASE_10_3_0/x11-clocks/stopwatch/Makefile 339336 2014-01-10 09:05:46Z gahr $

PORTNAME=	stopwatch
PORTVERSION=	3.5
PORTREVISION=	2
CATEGORIES=	x11-clocks
MASTER_SITES=	http://expect.nist.gov/stopwatch/
DISTNAME=	stopwatch

MAINTAINER=	edwin@mavetju.org
COMMENT=	Stopwatch enables hand timing much like a physical stopwatch

WRKSRC=		${WRKDIR}/${PORTNAME}-3.4
USES=		tk:run
NO_BUILD=	yes

PLIST_FILES=	bin/stopwatch

post-patch:
	${REINPLACE_CMD} -e "s,/depot/path/wish,${WISH}," ${WRKSRC}/stopwatch

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/stopwatch ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>

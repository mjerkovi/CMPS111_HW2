# Created by: jamie
# $FreeBSD: tags/RELEASE_10_3_0/graphics/intergif/Makefile 340740 2014-01-22 22:13:48Z antoine $

PORTNAME=	interGif
PORTVERSION=	6.15
CATEGORIES=	graphics
MASTER_SITES=	http://utter.chaos.org.uk/~pdh/software/arc/
DISTNAME=	ig${PORTVERSION:S,.,,}src
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Efficient animated GIF optimiser

WRKSRC=		${WRKDIR}/igsrc

MAKEFILE=	makefile.ix
ALL_TARGET=	intergif

PLIST_FILES=	bin/intergif

post-patch:
	@${REINPLACE_CMD} -e \
		's|=.*cc|= $$(CC)| ; \
		 s|-O6|$$(CFLAGS)| ; \
		 s|@echo|@true| ; \
		 s|@$$(cc)|$$(cc)|' ${WRKSRC}/src/makefile.ix

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/intergif ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>

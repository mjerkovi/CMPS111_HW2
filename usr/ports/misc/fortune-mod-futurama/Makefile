# Created by: stolz@i2.informatik.rwth-aachen.de
# $FreeBSD: tags/RELEASE_10_3_0/misc/fortune-mod-futurama/Makefile 379034 2015-02-15 13:33:25Z antoine $

PORTNAME=	fortune-mod-futurama
PORTVERSION=	0.2
PORTREVISION=	4
CATEGORIES=	misc
MASTER_SITES=	http://www.netmeister.org/apps/ \
		http://www.skysmurf.nl/comp/FreeBSD/distfiles/

MAINTAINER=	freebsd@skysmurf.nl
COMMENT=	Compilation of quotes from the TV series "Futurama"

USES=		tar:bzip2
SUB_FILES=	pkg-message

PLIST_FILES=	share/games/fortune/futurama share/games/fortune/futurama.dat

.if exists(/usr/games/strfile)
STRFILE=	/usr/games/strfile
.elif exists(/usr/bin/strfile)
STRFILE=	/usr/bin/strfile
.else
IGNORE=		needs strfile command. Please install games distribution of base system
.endif

do-build:
	@${STRFILE} ${WRKSRC}/futurama

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/share/games/fortune
	${INSTALL_DATA} ${WRKSRC}/futurama* ${STAGEDIR}${PREFIX}/share/games/fortune

.include <bsd.port.mk>

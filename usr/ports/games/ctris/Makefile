# Created by: Travis Poppe <tlp@liquidx.org>
# $FreeBSD: tags/RELEASE_10_3_0/games/ctris/Makefile 376395 2015-01-06 09:37:52Z ehaupt $

PORTNAME=	ctris
PORTVERSION=	0.42
CATEGORIES=	games
MASTER_SITES=	http://www.hackl.dhs.org/data/download/files/ \
		LOCAL/ehaupt

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Colorized, small, and flexible Tetris(TM)-clone for the console

LICENSE=	GPLv2

USES=		tar:bzip2

PLIST_FILES=	bin/ctris man/man6/ctris.6.gz

post-patch:
	@${REINPLACE_CMD} -e "s|gcc|${CC}|" -e "s|CFLAGS=.*|CFLAGS+=-Wall|" \
		 ${WRKSRC}/Makefile

do-install:
	${INSTALL_MAN} ${WRKSRC}/ctris.6.gz \
		${STAGEDIR}${PREFIX}/man/man6/ctris.6.gz
	${INSTALL_PROGRAM} ${WRKSRC}/ctris ${STAGEDIR}${PREFIX}/bin/ctris

.include <bsd.port.mk>

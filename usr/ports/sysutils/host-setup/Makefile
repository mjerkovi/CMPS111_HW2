# Created by: Devin Teske <dteske@vicor.com>
# $FreeBSD: tags/RELEASE_10_3_0/sysutils/host-setup/Makefile 345999 2014-02-25 13:42:33Z ehaupt $

PORTNAME=	host-setup
PORTVERSION=	4.0.2
CATEGORIES=	sysutils
MASTER_SITES=	http://druidbsd.sourceforge.net/download/

MAINTAINER=	dteske@vicor.com
COMMENT=	System configuration setup/management utility

NO_BUILD=	yes

PLIST_FILES=	sbin/${PORTNAME} man/man1/${PORTNAME}.1.gz

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${STAGEDIR}${MANPREFIX}/man/man1

.include <bsd.port.mk>

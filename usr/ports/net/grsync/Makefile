# Created by: Ganael Laplanche <ganael.laplanche@martymac.org>
# $FreeBSD: tags/RELEASE_10_3_0/net/grsync/Makefile 393444 2015-08-02 20:23:55Z kwm $

PORTNAME=	grsync
PORTVERSION=	1.2.5
CATEGORIES=	net ipv6
MASTER_SITES=	http://www.opbyte.it/release/ \
		LOCAL/martymac

MAINTAINER=	martymac@FreeBSD.org
COMMENT=	GTK frontend for rsync

LICENSE=	GPLv2

RUN_DEPENDS=	rsync:${PORTSDIR}/net/rsync \
		bash:${PORTSDIR}/shells/bash

USE_GNOME=	gtk20 intltool
USES=		desktop-file-utils gettext gmake \
		shared-mime-info pkgconfig shebangfix
SHEBANG_FILES=	src/grsync-batch
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--disable-unity

INSTALLS_ICONS=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	yes
NLS_CONFIGURE_ENABLE=	nls

.include <bsd.port.mk>

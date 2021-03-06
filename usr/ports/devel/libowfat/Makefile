# Created by: Thomas-Martin Seck <tmseck@netcologne.de>
# $FreeBSD: tags/RELEASE_10_3_0/devel/libowfat/Makefile 357277 2014-06-10 07:39:01Z olgeni $

PORTNAME=	libowfat
PORTVERSION=	0.29
PORTREVISION=	1
CATEGORIES=	devel ipv6
MASTER_SITES=	http://dl.fefe.de/

MAINTAINER=	lx@FreeBSD.org
COMMENT=	General purpose library based on code by D. J. Bernstein

USES=		gmake tar:bzip2
ALL_TARGET=	dep all

MAKEFILE=	GNUmakefile

OPTIONS_DEFINE=	OPTIMIZED_CFLAGS
OPTIONS_DEFAULT=	OPTIMIZED_CFLAGS

.include <bsd.port.pre.mk>

MAKE_ENV+=	INSTALL="${INSTALL}"

.include "${FILESDIR}/manpages"

.if ${PORT_OPTIONS:MOPTIMIZED_CFLAGS}
CFLAGS+=	-O2 -fomit-frame-pointer
.endif

post-extract:
	@${MKDIR} ${WRKSRC}/man
# Manual pages clash with other programs; prepend libowfat_ to them.
.for i in ${MANPAGES}
	@${MV} ${WRKSRC}/*/${i:S/libowfat_//} ${WRKSRC}/man/${i}
.endfor

post-patch:
# Clang cries when void functions return a value
	${REINPLACE_CMD} -e '56s|return ||' ${WRKSRC}/CAS.h
	${REINPLACE_CMD} -e "s|STAGEDIR|${STAGEDIR}|g" ${WRKSRC}/GNUmakefile

.include <bsd.port.post.mk>

# Created by: pat
# $FreeBSD: tags/RELEASE_10_3_0/sysutils/wmapmload/Makefile 366870 2014-09-01 12:54:13Z vanilla $

PORTNAME=	wmapmload
PORTVERSION=	0.3.4
PORTREVISION=	2
CATEGORIES=	sysutils windowmaker
MASTER_SITES=	http://tnemeth.free.fr/projets/programmes/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	APM battery status monitor dockapp with a similar look to wmcpuload

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

ONLY_FOR_ARCHS=	i386
USE_XORG=	x11 xpm
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=""

.include <bsd.port.mk>

# Created by: Honza Betik
# $FreeBSD: tags/RELEASE_10_3_0/net/radsecproxy/Makefile 384545 2015-04-23 00:38:04Z amdmi3 $

PORTNAME=	radsecproxy
PORTVERSION=	1.6.6
CATEGORIES=	net
MASTER_SITES=	http://software.uninett.no/radsecproxy/

MAINTAINER=	m.tsatsenko@gmail.com
COMMENT=	Radsecproxy is a generic RADIUS proxy

LICENSE=	GPLv2 BSD3CLAUSE
LICENSE_COMB=	dual

USES=		cpe tar:xz
CPE_VENDOR=	uninett

GNU_CONFIGURE=	yes
USE_RC_SUBR=	${PORTNAME}
USE_OPENSSL=	yes
CONFIGURE_ARGS=	--with-ssl=${OPENSSLBASE}

post-install:
	${MAKE} install-man -C ${WRKSRC} ${MAKE_ARGS}
	${INSTALL_DATA} ${WRKSRC}/radsecproxy.conf-example \
		${STAGEDIR}${PREFIX}/etc

.include <bsd.port.mk>

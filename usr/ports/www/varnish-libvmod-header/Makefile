# Created by: anders
# $FreeBSD: tags/RELEASE_10_3_0/www/varnish-libvmod-header/Makefile 400407 2015-10-28 18:37:56Z antoine $

PORTNAME=	libvmod-header
DISTVERSION=	0.31
PORTREVISION=	1
CATEGORIES=	www
PKGNAMEPREFIX=	varnish-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Varnish Module (vmod) for manipulation of duplicated headers

LICENSE=	BSD2CLAUSE

BROKEN=		fails to build

BUILD_DEPENDS=	varnish4>=4.0.2:${PORTSDIR}/www/varnish4 \
		rst2man:${PORTSDIR}/textproc/py-docutils

USES=		autoreconf gmake libtool pkgconfig python:2,build
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-static
CFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/varnish
CPPFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/varnish
PLIST_FILES=	man/man3/vmod_header.3.gz lib/varnish/vmods/libvmod_header.so
INSTALL_TARGET=	install-strip

USE_GITHUB=	yes
GH_ACCOUNT=	varnish
GH_TAGNAME=	e87ac92

.include <bsd.port.mk>

# Created by: Romain Tartiere <romain@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/devel/gio-sharp/Makefile 403636 2015-12-12 23:02:03Z bapt $

PORTNAME=	gio-sharp
PORTVERSION=	2.22.3
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/${PORTNAME}/

MAINTAINER=	mono@FreeBSD.org
COMMENT=	GIO bindings not available in gtk-sharp

BROKEN=		unfetchable
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	ac_cv_path_CSC=${LOCALBASE}/bin/mcs
USES=		gmake pathfix pkgconfig tar:bzip2
USE_GNOME=	gtksharp20

MAKE_JOBS_UNSAFE=yes

.include <bsd.port.mk>

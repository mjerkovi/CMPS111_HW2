# Created by: Olli Hauer <ohauer@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/www/mod_myvhost/Makefile 394508 2015-08-17 14:20:40Z mat $

PORTNAME=	mod_myvhost
PORTVERSION=	0.21
CATEGORIES=	www
MASTER_SITES=	http://mod-myvhost.googlecode.com/files/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Apache module for dynamically configured mass virtual hosting with php

LICENSE=	APACHE20

MANUAL_PACKAGE_BUILD=	needs apr and apache with DBD options enabled

USE_APACHE=	22+

PORTDOCS=	changelog.html documentation.html download.html \
		index.html my.css
PORTEXAMPLES=	vhosts.sql httpd.conf.add

OPTIONS_DEFINE=		PHP_MODULE DEBUG_MODULE PHP DEBUG
OPTIONS_DEFAULT=	PHP_MODULE

PHP_MODULE_DESC=	Enable PHP
DEBUG_MODULE_DESC=	Enable debugging

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEBUG_MODULE}
MAKE_ENV+=	WITH_DEBUG=true
STRIP=		# keep debug information
.endif

.if ${PORT_OPTIONS:MPHP_MODULE}
MAKE_ENV+=	WITH_PHP=true
USE_PHP=	yes
WANT_PHP_MOD=	yes
.endif

pre-patch:
	@${REINPLACE_CMD} -e "s|= apxs|= ${APXS}|" \
		-e "s|= rm|= ${RM}|" -e "s|= ln|= ${LN}|" \
		-e "s|= cp|= ${CP}|" ${WRKSRC}/Makefile

post-patch:
	${REINPLACE_CMD} -e 's|@APXS_STAGE@|-S LIBEXECDIR=${STAGEDIR}${PREFIX}/${APACHEMODDIR}|' \
		${WRKSRC}/Makefile

pre-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/${APACHEMODDIR}

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/doc/|} ${STAGEDIR}${DOCSDIR}

	@${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${PORTEXAMPLES:S|^|${WRKSRC}/|} ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>

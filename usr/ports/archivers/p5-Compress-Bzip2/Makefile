# Created by: Dmitry Sivachenko <demon@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/archivers/p5-Compress-Bzip2/Makefile 400230 2015-10-27 12:10:14Z demon $

PORTNAME=	Compress-Bzip2
PORTVERSION=	2.22
CATEGORIES=	archivers perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Perl5 interface to bzip2 compression library

USES=		perl5
USE_PERL5=	configure

post-install:
		${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Compress/Bzip2/Bzip2.so

.include <bsd.port.mk>

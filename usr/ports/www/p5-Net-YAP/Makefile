# Created by: Steven Kreuzer <skreuzer@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/www/p5-Net-YAP/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Net-YAP
PORTVERSION=	0.6
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Conduit to communicate with the Yahoo! Application Platform

BUILD_DEPENDS=	p5-Net-OAuth-Simple>=1.0:${PORTSDIR}/net/p5-Net-OAuth-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>

# Created by: Henk van Oers <hvo.pm@xs4all.nl>
# $FreeBSD: tags/RELEASE_10_3_0/www/p5-Dancer2-Plugin-Path-Class/Makefile 381091 2015-03-12 14:05:27Z vanilla $

PORTNAME=	Dancer2-Plugin-Path-Class
PORTVERSION=	0.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	hvo.pm@xs4all.nl
COMMENT=	List a directory using Path::Class

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Dancer2>=0.159002:${PORTSDIR}/www/p5-Dancer2 \
		p5-Path-Class>=0:${PORTSDIR}/devel/p5-Path-Class \
		p5-Format-Human-Bytes>=0:${PORTSDIR}/converters/p5-Format-Human-Bytes
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>

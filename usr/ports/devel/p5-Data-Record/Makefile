# $FreeBSD: tags/RELEASE_10_3_0/devel/p5-Data-Record/Makefile 376482 2015-01-07 17:56:15Z sunpoet $

PORTNAME=	Data-Record
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	espen@tagestad.no
COMMENT=	Data::Record - "split" on steroids

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-MRO-Compat>=0.09:${PORTSDIR}/devel/p5-MRO-Compat \
		p5-Hash-Util-FieldHash-Compat>0:${PORTSDIR}/devel/p5-Hash-Util-FieldHash-Compat
BUILD_DEPENDS=	p5-MRO-Compat>=0.09:${PORTSDIR}/devel/p5-MRO-Compat \
		p5-Hash-Util-FieldHash-Compat>0:${PORTSDIR}/devel/p5-Hash-Util-FieldHash-Compat
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Scope-Guard>=0.20:${PORTSDIR}/devel/p5-Scope-Guard

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>

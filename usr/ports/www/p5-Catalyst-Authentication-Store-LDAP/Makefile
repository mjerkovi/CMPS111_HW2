# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: tags/RELEASE_10_3_0/www/p5-Catalyst-Authentication-Store-LDAP/Makefile 379490 2015-02-21 08:39:06Z sunpoet $

PORTNAME=	Catalyst-Authentication-Store-LDAP
PORTVERSION=	1.015
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Authentication from an LDAP Directory for Catalyst

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Catalyst-Plugin-Authentication>=0.10003:${PORTSDIR}/www/p5-Catalyst-Plugin-Authentication \
		p5-perl-ldap>=0:${PORTSDIR}/net/p5-perl-ldap
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Net-LDAP-Server-Test>=0:${PORTSDIR}/net/p5-Net-LDAP-Server-Test \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-MockObject>=0:${PORTSDIR}/devel/p5-Test-MockObject

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>

# $FreeBSD: tags/RELEASE_10_3_0/www/p5-Plack-Middleware-InteractiveDebugger/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Plack-Middleware-InteractiveDebugger
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for Awesome Interactive Debugger ala Werkzeug

RUN_DEPENDS=	\
	p5-Data-Dump-Streamer>0:${PORTSDIR}/devel/p5-Data-Dump-Streamer \
	p5-Devel-StackTrace-WithLexicals>=0.08:${PORTSDIR}/devel/p5-Devel-StackTrace-WithLexicals \
	p5-Eval-WithLexicals>0:${PORTSDIR}/devel/p5-Eval-WithLexicals \
	p5-File-ShareDir>0:${PORTSDIR}/devel/p5-File-ShareDir \
	p5-Plack>=0.9977:${PORTSDIR}/www/p5-Plack \
	p5-Try-Tiny>0:${PORTSDIR}/lang/p5-Try-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>

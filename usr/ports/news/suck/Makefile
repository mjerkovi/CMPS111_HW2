# Created by: Noritaka Ishizumi <graphite@taurus.bekkoame.or.jp>
# $FreeBSD: tags/RELEASE_10_3_0/news/suck/Makefile 402191 2015-11-21 19:57:27Z dinoex $

PORTNAME=	suck
PORTVERSION=	4.3.2
PORTREVISION=	5
CATEGORIES=	news
#MASTER_SITES=	http://www.sucknews.org/
MASTER_SITES=	http://home.comcast.net/~bobyetman/ \
		LOCAL/dinoex
PKGNAMESUFFIX?=	${CNEWS_SUFFIX}${PKGNAMESUFFIX2}

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	Receives/sends news to/from localhost via NNTP

CONFLICTS?=	suckblow-1.*

USES=		gmake shebangfix
SHEBANG_FILES=	sample/post_filter.pl
GNU_CONFIGURE=	yes
MAKE_ENV=	CHKHISTORY=chkhistory_db.o

EX_SCRIPTS=	get.news.generic get.news.inn perl_kill.pl perl_xover.pl \
		post_filter.pl put.news put.news.pl put.news.sm put.news.sm.pl
EX_DATA=	suckkillfile.sample sucknewsrc.sample suckothermsgs.sample

OPTIONS_DEFINE=	SSL EXAMPLES
OPTIONS_SINGLE=	NEWS
OPTIONS_SINGLE_NEWS=	INN CNEWS
OPTIONS_DEFAULT?=	SSL INN
INN_DESC=	Build for local inn news server
CNEWS_DESC=	Build for local cnews news server

VARBASE?=	/var
NEWSBIN?=	${LOCALBASE}/libexec/cnews
NEWSCTL?=	${VARBASE}/lib/news

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MCNEWS}
CNEWS_PORT?=	news/cnews
CNEWS_SUFFIX=	-cnews
MAKE_ENV+=	DB_TYPE=-DUSE_DBZ DB_LIB=-lcnews
MAKE_ENV+=	DB_LIB_LOC=-L${LOCALBASE}/lib
MAKE_ENV+=	INCDIR2=-I${LOCALBASE}/include
BUILD_DEPENDS+=	${LOCALBASE}/lib/libcnews.a:${PORTSDIR}/${CNEWS_PORT}
CONFLICTS+=	suck-4.*
.endif

.if ${PORT_OPTIONS:MINN}
CFLAGS+=	-DNO_CONFIGDATA -I${LOCALBASE}/include/inn
MAKE_ENV+=	DB_TYPE="-DUSE_INN23 -DDO_TAGGED_HASH"
MAKE_ENV+=	DB_LIB="-linn -lstorage -linnhist"
MAKE_ENV+=	DB_LIB_LOC=-L${LOCALBASE}/news/lib
MAKE_ENV+=	DB_INC_LOC="-I${LOCALBASE}/news/include -I${LOCALBASE}/news/include/inn"
MAKE_ENV+=	INCDIR2=-I${LOCALBASE}/include
BUILD_DEPENDS+=	${LOCALBASE}/news/lib/libinn.a:${PORTSDIR}/news/inn
CONFLICTS+=	suck-cnews-4.*
.endif

.if ${PORT_OPTIONS:MSSL}
USE_OPENSSL=	yes
MAKE_ENV+=	SSL_LIB="-lssl -lcrypto"
MAKE_ENV+=	SSL_DEFS="-I${OPENSSLINC} -DHAVE_LIBSSL"
MAKE_ENV+=	SSL_LIB_LOC="-L${OPENSSLLIB}"
.endif

pre-configure:
.if ${PORT_OPTIONS:MCNEWS}
	${REINPLACE_CMD} -e "s=/usr/news/db=${NEWSCTL}=" \
		-e "s=/usr/lib/news/rnews=${NEWSBIN}/rnews=" \
		-e "s=/usr/local/lib/suck=${PREFIX}/lib/suck=" \
		${WRKSRC}/suck_config.h
.endif
.if ${PORT_OPTIONS:MINN}
	${REINPLACE_CMD} -e "s=/usr/news/db=${LOCALBASE}/news/lib=" \
		-e "s=/usr/lib/news/rnews=${LOCALBASE}/libexec/news/bin/rnews=" \
		-e "s=/usr/local/lib/suck=${PREFIX}/lib/suck=" \
		${WRKSRC}/suck_config.h
.endif

.if ${PORT_OPTIONS:MEXAMPLES}
post-install:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${EX_SCRIPTS:S=^=${WRKSRC}/sample/=} ${STAGEDIR}${EXAMPLESDIR}/
	${INSTALL_DATA} ${EX_DATA:S=^=${WRKSRC}/sample/=} ${STAGEDIR}${EXAMPLESDIR}/
.endif

.include <bsd.port.mk>

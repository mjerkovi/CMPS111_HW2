# $FreeBSD: tags/RELEASE_10_3_0/audio/libdiscid/Makefile 329272 2013-10-04 09:30:19Z jhale $

PORTNAME=	libdiscid
PORTVERSION=	0.6.1
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.musicbrainz.org/pub/musicbrainz/${PORTNAME}/ \
		http://ftp.osuosl.org/pub/musicbrainz/${PORTNAME}/

MAINTAINER=	jhale@FreeBSD.org
COMMENT=	Library for creating MusicBrainz DiscIDs

LICENSE=	LGPL21

USES=		cmake
USE_LDCONFIG=	yes

post-patch:
	${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_INSTALL_DIR}|libdata|' \
		 ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>

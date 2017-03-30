# $FreeBSD: tags/RELEASE_10_3_0/Mk/Uses/display.mk 399326 2015-10-15 07:36:38Z bapt $
#
# Feature:	display
# Usage:	USES=display or USES=display:ARGS
# Valid ARGS:	install (default, implicit), any target
# 
# Except the target where the DISPLAY is needed
#
# MAINTAINER: x11@FreeBSD.org

.if !defined(_INCLUDE_USES_DISPLAY_MK)
_INCLUDE_USES_DISPLAY_MK=	yes

.if empty(display_ARGS)
display_ARGS=	install
.endif

.if !defined(DISPLAY)
BUILD_DEPENDS+=	Xvfb:${PORTSDIR}/x11-servers/xorg-vfbserver \
	${LOCALBASE}/share/fonts/misc/8x13O.pcf.gz:${PORTSDIR}/x11-fonts/xorg-fonts-miscbitmaps \
	${LOCALBASE}/share/fonts/misc/fonts.alias:${PORTSDIR}/x11-fonts/font-alias \
	${LOCALBASE}/share/X11/xkb/rules/base:${PORTSDIR}/x11/xkeyboard-config \
	xkbcomp:${PORTSDIR}/x11/xkbcomp

XVFBPORT!=	port=0; while test -S /tmp/.X11-unix/X$${port} ; do port=$$(( port + 1 )) ; done ; ${ECHO_CMD} $$port
XVFBPIDFILE=	/tmp/.xvfb-${XVFBPORT}.pid
MAKE_ENV+=	DISPLAY=":${XVFBPORT}"

_USES_${display_ARGS}+=	290:start-display 860:stop-display
start-display:
	daemon -p ${XVFBPIDFILE} Xvfb :${XVFBPORT}

stop-display:
	pkill -15 -F ${XVFBPIDFILE}

.endif
.endif
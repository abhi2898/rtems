ACLOCAL_AMFLAGS = -I ../../../../aclocal

include $(top_srcdir)/../../../../automake/compile.am
include $(top_srcdir)/../../bsp.am

dist_project_lib_DATA = startup/bsp_specs

noinst_PROGRAMS =


start.$(OBJEXT): start/start.S
	$(CPPASCOMPILE) -o $@ -c $<
project_lib_DATA = start.$(OBJEXT)

project_lib_DATA += linkcmds
dist_project_lib_DATA += startup/linkcmds.bootp
dist_project_lib_DATA += startup/linkcmds.prom

project_lib_LIBRARIES = librtemsbsp.a
librtemsbsp_a_SOURCES =

# startup
librtemsbsp_a_SOURCES += startup/alloc360.c
librtemsbsp_a_SOURCES += ../../shared/bspclean.c
librtemsbsp_a_SOURCES += ../../shared/bsppredriverhook.c
librtemsbsp_a_SOURCES += ../../shared/bspgetworkarea.c
librtemsbsp_a_SOURCES += ../../shared/bspstart.c
librtemsbsp_a_SOURCES += startup/init68360.c
librtemsbsp_a_SOURCES += ../../shared/getentropy-cpucounter.c
librtemsbsp_a_SOURCES += ../../shared/sbrk.c
librtemsbsp_a_SOURCES += ../../shared/setvec.c
librtemsbsp_a_SOURCES += ../../shared/bspreset.c
# clock
librtemsbsp_a_SOURCES += clock/clock.c
# console
librtemsbsp_a_SOURCES += console/console.c
librtemsbsp_a_SOURCES += ../../shared/dummy_printk_support.c
# timer
librtemsbsp_a_SOURCES += timer/timer.c

if HAS_NETWORKING
librtemsbsp_a_SOURCES += network/network.c
endif

librtemsbsp_a_SOURCES += ../../../../../../bsps/m68k/shared/cache/cache.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/m68k/shared/m68kidle.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/m68k/shared/memProbe.c

if HAS_FPSP
include $(srcdir)/../../../../../../bsps/m68k/shared/fpsp-sources.am
endif

include $(top_srcdir)/../../../../automake/local.am
include $(srcdir)/../../../../../../bsps/shared/shared-sources.am
include $(srcdir)/../../../../../../bsps/m68k/gen68360/headers.am

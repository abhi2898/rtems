ACLOCAL_AMFLAGS = -I ../../../../aclocal

include $(top_srcdir)/../../../../automake/compile.am
include $(top_srcdir)/../../bsp.am

dist_project_lib_DATA = startup/bsp_specs



rtems_crti.$(OBJEXT): ../shared/start/rtems_crti.S
	$(CPPASCOMPILE) -o $@ -c $<
project_lib_DATA = rtems_crti.$(OBJEXT)

project_lib_DATA += linkcmds

project_lib_LIBRARIES = librtemsbsp.a
librtemsbsp_a_SOURCES =

# pclock
librtemsbsp_a_SOURCES += clock/p_clock.c
# console
librtemsbsp_a_SOURCES += console/console.c
# startup
librtemsbsp_a_SOURCES += ../../shared/bspclean.c
librtemsbsp_a_SOURCES += ../../shared/bsppredriverhook.c
librtemsbsp_a_SOURCES += startup/bspstart.c
librtemsbsp_a_SOURCES += startup/iss555.c
librtemsbsp_a_SOURCES += ../../shared/getentropy-cpucounter.c
librtemsbsp_a_SOURCES += ../../shared/sbrk.c
librtemsbsp_a_SOURCES += start/start.S
librtemsbsp_a_SOURCES += ../../shared/bspgetworkarea.c
librtemsbsp_a_SOURCES += ../../shared/bspreset.c
# tm27supp
librtemsbsp_a_SOURCES += startup/tm27supp.c

librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/shared/cache/cache.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/shared/dev/timer-ppc-dec.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/shared/exceptions/ppc_exc_print.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/dev/clock.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/dev/console-generic.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/start/irq_asm.S
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/start/irq.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/start/irq_init.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/start/raw_exception.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/start/vectors_init.c
librtemsbsp_a_SOURCES += ../../../../../../bsps/powerpc/ss555/start/vectors.S

include $(top_srcdir)/../../../../automake/local.am
include $(srcdir)/../../../../../../bsps/shared/shared-sources.am
include $(srcdir)/../../../../../../bsps/powerpc/shared/shared-sources.am
include $(srcdir)/../../../../../../bsps/powerpc/ss555/headers.am

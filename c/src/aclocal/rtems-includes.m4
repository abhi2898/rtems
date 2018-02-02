dnl
dnl RTEMS Include paths.
dnl
AC_DEFUN([RTEMS_INCLUDES],
[
AC_REQUIRE([RTEMS_SOURCE_TOP])
AC_REQUIRE([RTEMS_BUILD_TOP])

# Was CFLAGS set?
rtems_cv_CFLAGS_set="${CFLAGS+set}"

RTEMS_INCLUDE_CPUKIT="-I${RTEMS_SOURCE_ROOT}/cpukit/include"
RTEMS_INCLUDE_CPUKIT_ARCH="-I${RTEMS_SOURCE_ROOT}/cpukit/score/cpu/\$(RTEMS_CPU)/include"

RTEMS_CPUKIT_INCLUDE="${RTEMS_INCLUDE_CPUKIT} ${RTEMS_INCLUDE_CPUKIT_ARCH}"
RTEMS_BUILD_INCLUDE="-I\$(top_builddir) -I${RTEMS_BUILD_ROOT}/include"

RTEMS_INCLUDE="${RTEMS_BUILD_INCLUDE} ${RTEMS_CPUKIT_INCLUDE}"

RTEMS_CPPFLAGS="${RTEMS_INCLUDE}"

AC_SUBST([RTEMS_CPPFLAGS])
])
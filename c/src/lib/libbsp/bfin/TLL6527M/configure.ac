## Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([rtems-c-src-lib-libbsp-bfin-TLL6527M],[_RTEMS_VERSION],[https://devel.rtems.org/newticket])
AC_CONFIG_SRCDIR([make/custom/TLL6527M.cfg])
RTEMS_TOP(../../../../../..)
RTEMS_SOURCE_TOP
RTEMS_BUILD_TOP
RTEMS_BSP_LINKCMDS

RTEMS_CANONICAL_TARGET_CPU
AM_INIT_AUTOMAKE([no-define nostdinc foreign 1.12.2])
RTEMS_BSP_CONFIGURE


## bsp-specific options
RTEMS_BSPOPTS_SET([CONSOLE_USE_INTERRUPTS],[*],[1])
RTEMS_BSPOPTS_HELP([CONSOLE_USE_INTERRUPTS],
[The console driver can operate in either polled or interrupt mode.])

RTEMS_BSPOPTS_SET([UART_USE_DMA],[*],[1])
RTEMS_BSPOPTS_HELP([UART_USE_DMA],
[The uart driver can operate in dma mode with interrupts. 
Set to 1 if DMA operation is required ])

RTEMS_BSPOPTS_SET([CONSOLE_BAUDRATE],[*],[9600])
RTEMS_BSPOPTS_HELP([CONSOLE_BAUDRATE],
[The baudrate of the console uart.])

RTEMS_BSPOPTS_SET([INTERRUPT_USE_TABLE],[*],[1])
RTEMS_BSPOPTS_HELP([INTERRUPT_USE_TABLE],
[Select if INTERRUPT use table or link list])



RTEMS_BSPOPTS_SET([BFIN_ON_SKYEYE],[*],[0])
RTEMS_BSPOPTS_HELP([BFIN_ON_SKYEYE],
[(BSP--Skyeye)
 If defined, disable features which are not supported on Skyeye.])

RTEMS_BSP_CLEANUP_OPTIONS

# Explicitly list all Makefiles here
AC_CONFIG_FILES([Makefile])
AC_OUTPUT

old_CFLAGS="$CFLAGS"
CFLAGS="-Werror"
AS_IF(
   [test "x$enable_maintainer_flags" = "xyes" && test "x$GCC" = "xyes"],
   [
      AX_CHECK_COMPILE_FLAG([-Wall],                         [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wall"])
      AX_CHECK_COMPILE_FLAG([-Waggregate-return],            [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Waggregate-return"])
      AX_CHECK_COMPILE_FLAG([-Wdeclaration-after-statement], [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wdeclaration-after-statement"])
      AX_CHECK_COMPILE_FLAG([-Wempty-body],                  [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wempty-body"])
      AX_CHECK_COMPILE_FLAG([-Wformat],                      [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wformat"])
      AX_CHECK_COMPILE_FLAG([-Wformat-nonliteral],           [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wformat-nonliteral"])
      AX_CHECK_COMPILE_FLAG([-Wformat-security],             [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wformat-security"])
      AX_CHECK_COMPILE_FLAG([-Winit-self],                   [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Winit-self"])
      AX_CHECK_COMPILE_FLAG([-Winline],                      [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Winline"])
      AX_CHECK_COMPILE_FLAG([-Wmissing-include-dirs],        [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wmissing-include-dirs"])
      AX_CHECK_COMPILE_FLAG([-Wno-strict-aliasing],          [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wno-strict-aliasing"])
      AX_CHECK_COMPILE_FLAG([-Wno-uninitialized],            [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wno-uninitialized"])
      AX_CHECK_COMPILE_FLAG([-Wredundant-decls],             [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wredundant-decls"])
      AX_CHECK_COMPILE_FLAG([-Wreturn-type],                 [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wreturn-type"])
      AX_CHECK_COMPILE_FLAG([-Wshadow],                      [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wshadow"])
      AX_CHECK_COMPILE_FLAG([-Wswitch-default],              [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wswitch-default"])
      AX_CHECK_COMPILE_FLAG([-Wswitch-enum],                 [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wswitch-enum"])
      AX_CHECK_COMPILE_FLAG([-Wundef],                       [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wundef"])
      AX_CHECK_COMPILE_FLAG([-Wuninitialized],               [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wuninitialized"])
      AX_CHECK_COMPILE_FLAG([-Wexpansion-to-defined],        [MAINTAINER_CFLAGS="$MAINTAINER_CFLAGS -Wexpansion-to-defined"])
   ]
)
AC_SUBST(MAINTAINER_CFLAGS)
CFLAGS="$old_CFLAGS"

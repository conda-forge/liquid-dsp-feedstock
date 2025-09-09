#!/usr/bin/env bash

set -ex

# set default include and library dirs for Windows build
if [[ "$target_platform" == win-64 ]]; then
  export CPPFLAGS="$CPPFLAGS -isystem $PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$PREFIX/lib"
fi

# override SIMD detection based on microarch level we're compiling for
if [[ "$microarch_level" == "4" ]]; then
  export ax_cv_have_avx512f_cpu_ext="yes"
  export ax_cv_have_avx512f_ext="yes"
else
  export ax_cv_have_avx512f_cpu_ext="no"
  export ax_cv_have_avx512f_ext="no"
fi
if [[ "$microarch_level" == "3" ]]; then
  export ax_cv_have_avx2_cpu_ext="yes"
  export ax_cv_have_avx2_ext="yes"
  export ax_cv_have_avx_cpu_ext="yes"
  export ax_cv_have_avx_ext="yes"
else
  export ax_cv_have_avx2_cpu_ext="no"
  export ax_cv_have_avx2_ext="no"
  export ax_cv_have_avx_cpu_ext="no"
  export ax_cv_have_avx_ext="no"
fi
# if [[ "$microarch_level" == "2" ]]; then
#   export ax_cv_have_sse41_cpu_ext="yes"
#   export ax_cv_have_sse41_ext="yes"
#   export ax_cv_have_sse3_cpu_ext="yes"
#   export ax_cv_have_sse3_ext="yes"
# else
#   export ax_cv_have_sse41_cpu_ext="no"
#   export ax_cv_have_sse41_ext="no"
#   export ax_cv_have_sse3_cpu_ext="no"
#   export ax_cv_have_sse3_ext="no"
# fi
if [[ "$microarch_level" == "1" ]]; then
  export ax_cv_have_sse2_cpu_ext="yes"
  export ax_cv_have_sse2_ext="yes"
else
  export ax_cv_have_sse2_cpu_ext="no"
  export ax_cv_have_sse2_ext="no"
fi

configure_args=(
    --prefix=$PREFIX
)

./bootstrap.sh
./configure "${configure_args[@]}" || cat config.log
make -j${CPU_COUNT}
make install

# remove static library
rm $PREFIX/lib/libliquid.a*

if [[ "$target_platform" == win-* ]]; then
  # remove unversioned DLL since Windows doesn't do symlinks
  # (functionally this is replaced by the lib/liquid.lib import lib anyway)
  rm $PREFIX/lib/libliquid.dll
  # put DLLs where they properly belong in bin
  mv $PREFIX/lib/liquid*.dll $PREFIX/bin
fi

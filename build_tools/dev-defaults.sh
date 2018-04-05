# Default values used by several dev-scripts.
#

# Current list of platform levels we support
#
# Note: levels 6 and 7 are omitted since they have the same native
# APIs as level 5. Same for levels 10, 11 and 12
#
API_LEVELS="3 4 5 8 9 12 13 14 15 16 17 18 19 21 22 23 24 26 27"

FIRST_API64_LEVEL=21

# Default ABIs for the target prebuilt binaries.
PREBUILT_ABIS="armeabi armeabi-v7a x86 mips armeabi-v7a-hard arm64-v8a x86_64 mips64"

# Location of the libcrystax sources, relative to the NDK root directory
CRYSTAX_SUBDIR=sources/crystax

# Location of the STLport sources, relative to the NDK root directory
STLPORT_SUBDIR=sources/cxx-stl/stlport

# Location of the GAbi++ sources, relative to the NDK root directory
GABIXX_SUBDIR=sources/cxx-stl/gabi++

# Location of the GNU libstdc++ headers and libraries, relative to the NDK
# root directory.
GNUSTL_SUBDIR=sources/cxx-stl/gnu-libstdc++

# Location of the LLVM libc++ headers and libraries, relative to the NDK
# root directory.
LIBCXX_SUBDIR=sources/cxx-stl/llvm-libc++

# Location of the LLVM libc++abi headers, relative to the NDK # root directory.
LIBCXXABI_SUBDIR=sources/cxx-stl/llvm-libc++abi/libcxxabi

# Location of the GNUstep libobjc2 headers and libraries, relative to the NDK root directory
GNUSTEP_OBJC2_SUBDIR=sources/objc/gnustep-libobjc2

# Location of the Cocotron headers and libraries, relative to the NDK root directory
COCOTRON_SUBDIR=sources/objc/cocotron/0.1.0

# Location of the libportable sources, relative to the NDK root directory
LIBPORTABLE_SUBDIR=sources/android/libportable

# Location of the gccunwind sources, relative to the NDK root directory
GCCUNWIND_SUBDIR=sources/android/gccunwind

# Location of the compiler-rt sources, relative to the NDK root directory
COMPILER_RT_SUBDIR=sources/android/compiler-rt

# Location of the boost sources, relative to the NDK root directory
BOOST_SUBDIR=sources/boost
BOOST_VERSIONS="1.59.0"

# Location of the ICU sources, relative to the NDK root directory
ICU_SUBDIR=sources/icu
ICU_VERSIONS="56.1"

# Location of the sqlite3 libraries, relative to the NDK root directory
SQLITE3_SUBDIR=sources/sqlite/3

# Location of the python libraries, relative to the NDK root directory
PYTHON_SUBDIR=sources/python
PYTHON_VERSIONS="2.7 3.5"

# Location of the OpenSSL libraries, relative to the NDK root directory
OPENSSL_SUBDIR=sources/openssl
OPENSSL_VERSIONS="1.0.1p"
DEFAULT_OPENSSL_VERSION=$(echo $OPENSSL_VERSIONS | tr ' ' '\n' | head -n 1)

# Location of the libpng libraries, relative to the NDK root directory
LIBPNG_SUBDIR=sources/libpng
LIBPNG_VERSIONS="1.6.19"

# Location of the libjpeg libraries, relative to the NDK root directory
LIBJPEG_SUBDIR=sources/libjpeg
LIBJPEG_VERSIONS="9a"

# Location of the libjpeg-turbo libraries, relative to the NDK root directory
LIBJPEGTURBO_SUBDIR=sources/libjpeg-turbo
LIBJPEGTURBO_VERSIONS="1.4.2"

# Location of the libtiff libraries, relative to the NDK root directory
LIBTIFF_SUBDIR=sources/libtiff
LIBTIFF_VERSIONS="4.0.6"

# Location of the gccunwind sources, relative to the NDK root directory
GCCUNWIND_SUBDIR=sources/android/gccunwind

# Location of the support sources for libc++, relative to the NDK root directory
# zuav: todo: remove all references to the var
SUPPORT_SUBDIR=sources/android/support

# The date to use when downloading toolchain sources from AOSP servers
# Leave it empty for tip of tree.
TOOLCHAIN_GIT_DATE=now

# The space-separated list of all GCC versions we support in this NDK
DEFAULT_GCC_VERSION_LIST="4.9 5"

DEFAULT_GCC_VERSION=$(echo $DEFAULT_GCC_VERSION_LIST | tr ' ' '\n' | head -n 1)

DEFAULT_GCC32_VERSION=$DEFAULT_GCC_VERSION
DEFAULT_GCC64_VERSION=$DEFAULT_GCC_VERSION
FIRST_GCC32_VERSION=4.9
FIRST_GCC64_VERSION=4.9
DEFAULT_LLVM_GCC32_VERSION=$DEFAULT_GCC_VERSION
DEFAULT_LLVM_GCC64_VERSION=$DEFAULT_GCC_VERSION

DEFAULT_BINUTILS_VERSION=2.25
DEFAULT_GDB_VERSION=7.10
DEFAULT_MPFR_VERSION=3.1.2
DEFAULT_GMP_VERSION=6.0.0
DEFAULT_MPC_VERSION=1.0.3
DEFAULT_CLOOG_VERSION=0.18.0
DEFAULT_CLOOG_VERSION_FOR_GCC5=0.18.3
DEFAULT_ISL_VERSION=0.11.1
DEFAULT_PPL_VERSION=1.1
DEFAULT_PYTHON_VERSION=2.7.5
DEFAULT_PERL_VERSION=5.16.2
DEFAULT_EXPAT_VERSION=2.0.1

# Default platform to build target binaries against.
DEFAULT_PLATFORM=android-9

# The list of default CPU architectures we support
DEFAULT_ARCHS="arm x86 mips arm64 x86_64 mips64"

# Default toolchain names and prefix
#
# This is used by get_default_toolchain_name_for_arch and get_default_toolchain_prefix_for_arch
# defined below
DEFAULT_ARCH_TOOLCHAIN_NAME_arm=arm-linux-androideabi
DEFAULT_ARCH_TOOLCHAIN_PREFIX_arm=arm-linux-androideabi

DEFAULT_ARCH_TOOLCHAIN_NAME_arm64=aarch64-linux-android
DEFAULT_ARCH_TOOLCHAIN_PREFIX_arm64=aarch64-linux-android

DEFAULT_ARCH_TOOLCHAIN_NAME_x86=x86
DEFAULT_ARCH_TOOLCHAIN_PREFIX_x86=i686-linux-android

DEFAULT_ARCH_TOOLCHAIN_NAME_x86_64=x86_64
DEFAULT_ARCH_TOOLCHAIN_PREFIX_x86_64=x86_64-linux-android

DEFAULT_ARCH_TOOLCHAIN_NAME_mips=mipsel-linux-android
DEFAULT_ARCH_TOOLCHAIN_PREFIX_mips=mipsel-linux-android

DEFAULT_ARCH_TOOLCHAIN_NAME_mips64=mips64el-linux-android
DEFAULT_ARCH_TOOLCHAIN_PREFIX_mips64=mips64el-linux-android

# The space-separated list of all LLVM versions we support in NDK
DEFAULT_LLVM_VERSION_LIST="3.6 3.7"

# The default LLVM version (first item in the list)
DEFAULT_LLVM_VERSION=$(echo "$DEFAULT_LLVM_VERSION_LIST" | tr ' ' '\n' | head -n 1)

# The default URL to download the LLVM tar archive
DEFAULT_LLVM_URL="http://llvm.org/releases"

# The list of default host NDK systems we support
DEFAULT_SYSTEMS="linux-x86 windows darwin-x86"

# The default issue tracker URL
DEFAULT_ISSUE_TRACKER_URL="https://tracker.crystax.net/projects/ndk"

# Return the default gcc version for a given architecture
# $1: Architecture name (e.g. 'arm')
# Out: default arch-specific gcc version
get_default_gcc_version_for_arch ()
{
    case $1 in
       *64) echo $DEFAULT_GCC64_VERSION ;;
       *) echo $DEFAULT_GCC32_VERSION ;;
    esac
}

# Return the first gcc version for a given architecture
# $1: Architecture name (e.g. 'arm')
# Out: default arch-specific gcc version
get_first_gcc_version_for_arch ()
{
    case $1 in
       *64) echo $FIRST_GCC64_VERSION ;;
       *) echo $FIRST_GCC32_VERSION ;;
    esac
}

# Return default NDK ABI for a given architecture name
# $1: Architecture name
# Out: ABI name
get_default_abi_for_arch ()
{
    local RET
    case $1 in
        arm)
            RET="armeabi"
            ;;
        arm64)
            RET="arm64-v8a"
            ;;
        x86|x86_64|mips|mips64)
            RET="$1"
            ;;
        mips32r6)
            RET="mips"
            ;;
        *)
            2> echo "ERROR: Unsupported architecture name: $1, use one of: arm arm64 x86 x86_64 mips mips64"
            exit 1
            ;;
    esac
    echo "$RET"
}


# Retrieve the list of default ABIs supported by a given architecture
# $1: Architecture name
# Out: space-separated list of ABI names
get_default_abis_for_arch ()
{
    local RET
    case $1 in
        arm)
            RET="armeabi armeabi-v7a armeabi-v7a-hard"
            ;;
        arm64)
            RET="arm64-v8a"
            ;;
        x86|x86_64|mips|mips32r6|mips64)
            RET="$1"
            ;;
        *)
            2> echo "ERROR: Unsupported architecture name: $1, use one of: arm arm64 x86 x86_64 mips mips64"
            exit 1
            ;;
    esac
    echo "$RET"
}

# Return toolchain name for given architecture and GCC version
# $1: Architecture name (e.g. 'arm')
# $2: optional, GCC version (e.g. '4.8')
# Out: default arch-specific toolchain name (e.g. 'arm-linux-androideabi-$GCC_VERSION')
# Return empty for unknown arch
get_toolchain_name_for_arch ()
{
    if [ ! -z "$2" ] ; then
        eval echo \"\${DEFAULT_ARCH_TOOLCHAIN_NAME_$1}-$2\"
    else
        eval echo \"\${DEFAULT_ARCH_TOOLCHAIN_NAME_$1}\"
    fi
}

# Return the default toolchain name for a given architecture
# $1: Architecture name (e.g. 'arm')
# Out: default arch-specific toolchain name (e.g. 'arm-linux-androideabi-$GCCVER')
# Return empty for unknown arch
get_default_toolchain_name_for_arch ()
{
    local GCCVER=$(get_default_gcc_version_for_arch $1)
    eval echo \"\${DEFAULT_ARCH_TOOLCHAIN_NAME_$1}-$GCCVER\"
}

# Return the default toolchain program prefix for a given architecture
# $1: Architecture name
# Out: default arch-specific toolchain prefix (e.g. arm-linux-androideabi)
# Return empty for unknown arch
get_default_toolchain_prefix_for_arch ()
{
    eval echo "\$DEFAULT_ARCH_TOOLCHAIN_PREFIX_$1"
}

# Get the list of all toolchain names for a given architecture
# $1: architecture (e.g. 'arm')
# $2: comma separated versions (optional)
# Out: list of toolchain names for this arch (e.g. arm-linux-androideabi-4.8 arm-linux-androideabi-4.9)
# Return empty for unknown arch
get_toolchain_name_list_for_arch ()
{
    local PREFIX VERSION RET ADD FIRST_GCC_VERSION VERSIONS
    PREFIX=$(eval echo \"\$DEFAULT_ARCH_TOOLCHAIN_NAME_$1\")
    if [ -z "$PREFIX" ]; then
        return 0
    fi
    RET=""
    FIRST_GCC_VERSION=$(get_first_gcc_version_for_arch $1)
    ADD=""
    VERSIONS=$(commas_to_spaces $2)
    if [ -z "$VERSIONS" ]; then
        VERSIONS=$DEFAULT_GCC_VERSION_LIST
    else
        ADD="yes" # include everything we passed explicitly
    fi
    for VERSION in $VERSIONS; do
        if [ -z "$ADD" -a "$VERSION" = "$FIRST_GCC_VERSION" ]; then
            ADD="yes"
        fi
        if [ -z "$ADD" ]; then
            continue
        fi
        RET=$RET" $PREFIX-$VERSION"
    done
    RET=${RET## }
    echo "$RET"
}

# Return the binutils version to be used by default when
# building a given version of GCC. This is needed to ensure
# we use binutils-2.19 when building gcc-4.4.3 for ARM and x86,
# and later binutils in other cases (mips, or gcc-4.6+).
#
# Note that technically, we could use latest binutils for all versions of
# GCC, however, in NDK r7, we did build GCC 4.4.3 with binutils-2.20.1
# and this resulted in weird C++ debugging bugs. For NDK r7b and higher,
# binutils was reverted to 2.19, to ensure at least
# feature/bug compatibility.
#
# $1: toolchain with version number (e.g. 'arm-linux-androideabi-4.8')
#
get_default_binutils_version_for_gcc ()
{
    echo "$DEFAULT_BINUTILS_VERSION"
}

# Return the binutils version to be used by default when
# building a given version of llvm. For llvm-3.4 or later,
# we use binutils-2.23+ to ensure the LLVMgold.so could be
# built properly. For llvm-3.3, we use binutils-2.21 as default.
#
# $1: toolchain with version numer (e.g. 'llvm-3.3')
#
get_default_binutils_version_for_llvm ()
{
    echo "$DEFAULT_BINUTILS_VERSION"
}

# Return the gdb version to be used by default when building a given
# version of GCC.
#
# $1: toolchain with version number (e.g. 'arm-linux-androideabi-4.8')
#
get_default_gdb_version_for_gcc ()
{
    echo "$DEFAULT_GDB_VERSION"
}

# Return the gdbserver version to be used by default when building a given
# version of GCC.
#
# $1: toolchain with version number (e.g. 'arm-linux-androideabi-4.8')
#
get_default_gdbserver_version_for_gcc ()
{
    echo "$DEFAULT_GDB_VERSION"
}

/* libtiff/tif_config.h.in.  Generated from configure.ac by autoheader.  */

/* Support CCITT Group 3 & 4 algorithms */
#ifndef CCITT_SUPPORT
#cmakedefine CCITT_SUPPORT 1
#endif

/* Pick up YCbCr subsampling info from the JPEG data stream to support files
   lacking the tag (default enabled). */
#ifndef CHECK_JPEG_YCBCR_SUBSAMPLING
#cmakedefine CHECK_JPEG_YCBCR_SUBSAMPLING 1
#endif

/* Support C++ stream API (requires C++ compiler) */
#ifndef CXX_SUPPORT
#cmakedefine CXX_SUPPORT 1
#endif

/* Treat extra sample as alpha (default enabled). The RGBA interface will
   treat a fourth sample with no EXTRASAMPLE_ value as being ASSOCALPHA. Many
   packages produce RGBA files but don't mark the alpha properly. */
#ifndef DEFAULT_EXTRASAMPLE_AS_ALPHA
#cmakedefine DEFAULT_EXTRASAMPLE_AS_ALPHA 1
#endif

/* Use the Apple OpenGL framework. */
#ifndef HAVE_APPLE_OPENGL_FRAMEWORK
#cmakedefine HAVE_APPLE_OPENGL_FRAMEWORK
#endif

/* Define to 1 if you have the <assert.h> header file. */
#ifndef HAVE_ASSERT_H
#cmakedefine HAVE_ASSERT_H 1
#endif

/* Define to 1 if you have the <dlfcn.h> header file. */
#ifndef HAVE_DLFCN_H
#cmakedefine HAVE_DLFCN_H 1
#endif

/* Define to 1 if you have the <fcntl.h> header file. */
#ifndef HAVE_FCNTL_H
#cmakedefine HAVE_FCNTL_H 1
#endif

/* Define to 1 if you have the `floor' function. */
#ifndef HAVE_FLOOR
#cmakedefine HAVE_FLOOR 1
#endif

/* Define to 1 if you have the `getopt' function. */
#ifndef HAVE_GETOPT
#cmakedefine HAVE_GETOPT 1
#endif

/* Define as 0 or 1 according to the floating point format suported by the
   machine */
#ifndef HAVE_IEEEFP
#cmakedefine01 HAVE_IEEEFP
#endif

/* Define to 1 if the system has the type `int16'. */
#ifndef HAVE_INT16
#cmakedefine HAVE_INT16 1
#endif

/* Define to 1 if the system has the type `int32'. */
#ifndef HAVE_INT32
#cmakedefine HAVE_INT32 1
#endif

/* Define to 1 if the system has the type `int8'. */
#ifndef HAVE_INT8
#cmakedefine HAVE_INT8 1
#endif

/* Define to 1 if you have the <inttypes.h> header file. */
#ifndef HAVE_INTTYPES_H
#cmakedefine HAVE_INTTYPES_H 1
#endif

/* Define to 1 if you have the `isascii' function. */
#ifndef HAVE_ISASCII
#cmakedefine HAVE_ISASCII 1
#endif

/* Define to 1 if you have the `lfind' function. */
#ifndef HAVE_LFIND
#cmakedefine HAVE_LFIND 1
#endif

/* Define to 1 if you have the `c' library (-lc). */
#ifndef HAVE_LIBC
#cmakedefine HAVE_LIBC 1
#endif

/* Define to 1 if you have the `m' library (-lm). */
#ifndef HAVE_LIBM
#cmakedefine HAVE_LIBM 1
#endif

/* Define to 1 if you have the <limits.h> header file. */
#ifndef HAVE_LIMITS_H
#cmakedefine HAVE_LIMITS_H 1
#endif

/* Define to 1 if you have the <malloc.h> header file. */
#ifndef HAVE_MALLOC_H
#cmakedefine HAVE_MALLOC_H 1
#endif

/* Define to 1 if you have the `memmove' function. */
#ifndef HAVE_MEMMOVE
#cmakedefine HAVE_MEMMOVE 1
#endif

/* Define to 1 if you have the <memory.h> header file. */
#ifndef HAVE_MEMORY_H
#cmakedefine HAVE_MEMORY_H 1
#endif

/* Define to 1 if you have the `memset' function. */
#ifndef HAVE_MEMSET
#cmakedefine HAVE_MEMSET 1
#endif

/* Define to 1 if you have the `mmap' function. */
#ifndef HAVE_MMAP
#cmakedefine HAVE_MMAP 1
#endif

/* Define to 1 if you have the `pow' function. */
#ifndef HAVE_POW
#cmakedefine HAVE_POW 1
#endif

/* Define if you have POSIX threads libraries and header files. */
#ifndef HAVE_PTHREAD
#cmakedefine HAVE_PTHREAD
#endif

/* Define to 1 if you have the <search.h> header file. */
#ifndef HAVE_SEARCH_H
#cmakedefine HAVE_SEARCH_H 1
#endif

/* Define to 1 if you have the `sqrt' function. */
#ifndef HAVE_SQRT
#cmakedefine HAVE_SQRT 1
#endif

/* Define to 1 if you have the <stdint.h> header file. */
#ifndef HAVE_STDINT_H
#cmakedefine HAVE_STDINT_H 1
#endif

/* Define to 1 if you have the <stdlib.h> header file. */
#ifndef HAVE_STDLIB_H
#cmakedefine HAVE_STDLIB_H 1
#endif

/* Define to 1 if you have the `strcasecmp' function. */
#ifndef HAVE_STRCASECMP
#cmakedefine HAVE_STRCASECMP 1
#endif

/* Define to 1 if you have the `strchr' function. */
#ifndef HAVE_STRCHR
#cmakedefine HAVE_STRCHR 1
#endif

/* Define to 1 if you have the <strings.h> header file. */
#ifndef HAVE_STRINGS_H
#cmakedefine HAVE_STRINGS_H 1
#endif

/* Define to 1 if you have the <string.h> header file. */
#ifndef HAVE_STRING_H
#cmakedefine HAVE_STRING_H 1
#endif

/* Define to 1 if you have the `strrchr' function. */
#ifndef HAVE_STRRCHR
#cmakedefine HAVE_STRRCHR 1
#endif

/* Define to 1 if you have the `strstr' function. */
#ifndef HAVE_STRSTR
#cmakedefine HAVE_STRSTR 1
#endif

/* Define to 1 if you have the `strtol' function. */
#ifndef HAVE_STRTOL
#cmakedefine HAVE_STRTOL 1
#endif

/* Define to 1 if you have the `strtoul' function. */
#ifndef HAVE_STRTOUL
#cmakedefine HAVE_STRTOUL 1
#endif

/* Define to 1 if you have the <sys/stat.h> header file. */
#ifndef HAVE_SYS_STAT_H
#cmakedefine HAVE_SYS_STAT_H 1
#endif

/* Define to 1 if you have the <sys/time.h> header file. */
#ifndef HAVE_SYS_TIME_H
#cmakedefine HAVE_SYS_TIME_H 1
#endif

/* Define to 1 if you have the <sys/types.h> header file. */
#ifndef HAVE_SYS_TYPES_H
#cmakedefine HAVE_SYS_TYPES_H 1
#endif

/* Define to 1 if you have the <unistd.h> header file. */
#ifndef HAVE_UNISTD_H
#cmakedefine HAVE_UNISTD_H 1
#endif

/* Define to 1 if you have the <windows.h> header file. */
#ifndef HAVE_WINDOWS_H
#cmakedefine HAVE_WINDOWS_H 1
#endif

/* Native cpu byte order: 1 if big-endian (Motorola) or 0 if little-endian
   (Intel) */
#ifndef HOST_BIGENDIAN
#cmakedefine01 HOST_BIGENDIAN
#endif

/* Set the native cpu bit order (FILLORDER_LSB2MSB or FILLORDER_MSB2LSB) */
#ifndef HOST_FILLORDER
#cmakedefine HOST_FILLORDER ${HOST_FILLORDER}
#endif

/* Support JPEG compression (requires IJG JPEG library) */
#ifndef JPEG_SUPPORT
#cmakedefine JPEG_SUPPORT 1
#endif

/* Support LogLuv high dynamic range encoding */
#ifndef LOGLUV_SUPPORT
#cmakedefine LOGLUV_SUPPORT 1
#endif

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#ifndef LT_OBJDIR
#cmakedefine LT_OBJDIR ${LT_OBJDIR}
#endif

/* Support LZW algorithm */
#ifndef LZW_SUPPORT
#cmakedefine LZW_SUPPORT 1
#endif

/* Support Microsoft Document Imaging format */
#ifndef MDI_SUPPORT
#cmakedefine MDI_SUPPORT 1
#endif

/* Support NeXT 2-bit RLE algorithm */
#ifndef NEXT_SUPPORT
#cmakedefine NEXT_SUPPORT 1
#endif

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
#ifndef NO_MINUS_C_MINUS_O
#cmakedefine NO_MINUS_C_MINUS_O 1
#endif

/* Support Old JPEG compresson (read contrib/ojpeg/README first! Compilation
   fails with unpatched IJG JPEG library) */
#ifndef OJPEG_SUPPORT
#cmakedefine OJPEG_SUPPORT 1
#endif

/* Name of package */
#ifndef PACKAGE
#cmakedefine PACKAGE ${PACKAGE}
#endif

/* Define to the address where bug reports for this package should be sent. */
#ifndef PACKAGE_BUGREPORT
#cmakedefine PACKAGE_BUGREPORT ${PACKAGE_BUGREPORT}
#endif

/* Define to the full name of this package. */
#ifndef PACKAGE_NAME
#cmakedefine PACKAGE_NAME ${PACKAGE_NAME}
#endif

/* Define to the full name and version of this package. */
#ifndef PACKAGE_STRING
#cmakedefine PACKAGE_STRING ${PACKAGE_STRING}
#endif

/* Define to the one symbol short name of this package. */
#ifndef PACKAGE_TARNAME
#cmakedefine PACKAGE_TARNAME ${PACKAGE_TARNAME}
#endif

/* Define to the version of this package. */
#ifndef PACKAGE_VERSION
#cmakedefine PACKAGE_VERSION ${PACKAGE_VERSION}
#endif

/* Support Macintosh PackBits algorithm */
#ifndef PACKBITS_SUPPORT
#cmakedefine PACKBITS_SUPPORT 1
#endif

/* Support Pixar log-format algorithm (requires Zlib) */
#ifndef PIXARLOG_SUPPORT
#cmakedefine PIXARLOG_SUPPORT 1
#endif

/* Define to necessary symbol if this constant uses a non-standard name on
   your system. */
#ifndef PTHREAD_CREATE_JOINABLE
#cmakedefine PTHREAD_CREATE_JOINABLE ${PTHREAD_CREATE_JOINABLE}
#endif

/* The size of a `int', as computed by sizeof. */
#ifndef SIZEOF_INT
#cmakedefine SIZEOF_INT ${SIZEOF_INT}
#endif

/* The size of a `long', as computed by sizeof. */
#ifndef SIZEOF_LONG
#cmakedefine SIZEOF_LONG ${SIZEOF_LONG}
#endif

/* Define to 1 if you have the ANSI C header files. */
#ifndef STDC_HEADERS
#cmakedefine STDC_HEADERS 1
#endif

/* Support strip chopping (whether or not to convert single-strip uncompressed
   images to mutiple strips of specified size to reduce memory usage) */
#ifndef STRIPCHOP_DEFAULT
#cmakedefine STRIPCHOP_DEFAULT ${STRIPCHOP_DEFAULT}
#endif

/* Default size of the strip in bytes (when strip chopping enabled) */
#ifndef STRIP_SIZE_DEFAULT
#cmakedefine STRIP_SIZE_DEFAULT ${STRIP_SIZE_DEFAULT}
#endif

/* Enable SubIFD tag (330) support */
#ifndef SUBIFD_SUPPORT
#cmakedefine SUBIFD_SUPPORT 1
#endif

/* Support ThunderScan 4-bit RLE algorithm */
#ifndef THUNDER_SUPPORT
#cmakedefine THUNDER_SUPPORT 1
#endif

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#ifndef TIME_WITH_SYS_TIME
#cmakedefine TIME_WITH_SYS_TIME 1
#endif

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
#ifndef TM_IN_SYS_TIME
#cmakedefine TM_IN_SYS_TIME 1
#endif

/* Version number of package */
#ifndef VERSION
#cmakedefine VERSION ${VERSION}
#endif

/* Define to 1 if your processor stores words with the most significant byte
   first (like Motorola and SPARC, unlike Intel and VAX). */
#ifndef WORDS_BIGENDIAN
#cmakedefine WORDS_BIGENDIAN 1
#endif

/* Define to 1 if the X Window System is missing or not being used. */
#ifndef X_DISPLAY_MISSING
#cmakedefine X_DISPLAY_MISSING 1
#endif

/* Support Deflate compression */
#ifndef ZIP_SUPPORT
#cmakedefine ZIP_SUPPORT 1
#endif

/* Number of bits in a file offset, on hosts where this is settable. */
#ifndef _FILE_OFFSET_BITS
#cmakedefine _FILE_OFFSET_BITS ${_FILE_OFFSET_BITS}
#endif

/* Define for large files, on AIX-style hosts. */
#ifndef _LARGE_FILES
#cmakedefine _LARGE_FILES
#endif

/* Define to empty if `const' does not conform to ANSI C. */
#ifndef const
#cmakedefine const ${const}
#endif

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#ifndef inline
#cmakedefine inline ${inline}
#endif
#endif

/* Define to `long' if <sys/types.h> does not define. */
#ifndef off_t
#cmakedefine off_t ${offt}
#endif

/* Define to `unsigned' if <sys/types.h> does not define. */
#ifndef size_t
#cmakedefine size_t ${size_t}
#endif


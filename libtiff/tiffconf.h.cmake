/*
  Configuration defines for installed libtiff.
  This file maintained for backward compatibility. Do not use definitions
  from this file in your programs.
*/

#ifndef _TIFFCONF_
#define _TIFFCONF_

/* Define to 1 if the system has the type `int16'. */
#cmakedefine HAVE_INT16 1

/* Define to 1 if the system has the type `int32'. */
#cmakedefine HAVE_INT32 1

/* Define to 1 if the system has the type `int8'. */
#cmakedefine HAVE_INT8 1

/* The size of a `int', as computed by sizeof. */
#cmakedefine SIZEOF_INT ${SIZEOF_INT}

/* The size of a `long', as computed by sizeof. */
#cmakedefine SIZEOF_LONG ${SIZEOF_LONG}

/* Compatibility stuff. */

/* Define as 0 or 1 according to the floating point format suported by the
   machine */
#cmakedefine01 HAVE_IEEEFP

/* Set the native cpu bit order (FILLORDER_LSB2MSB or FILLORDER_MSB2LSB) */
#cmakedefine HOST_FILLORDER ${HOST_FILLORDER}

/* Native cpu byte order: 1 if big-endian (Motorola) or 0 if little-endian
   (Intel) */
#cmakedefine01 HOST_BIGENDIAN

/* Support CCITT Group 3 & 4 algorithms */
#cmakedefine CCITT_SUPPORT 1

/* Support JPEG compression (requires IJG JPEG library) */
#cmakedefine JPEG_SUPPORT 1

/* Support LogLuv high dynamic range encoding */
#cmakedefine LOGLUV_SUPPORT 1

/* Support LZW algorithm */
#cmakedefine LZW_SUPPORT 1

/* Support NeXT 2-bit RLE algorithm */
#cmakedefine NEXT_SUPPORT 1

/* Support Old JPEG compresson (read contrib/ojpeg/README first! Compilation
   fails with unpatched IJG JPEG library) */
#cmakedefine OJPEG_SUPPORT 1

/* Support Macintosh PackBits algorithm */
#cmakedefine PACKBITS_SUPPORT 1

/* Support Pixar log-format algorithm (requires Zlib) */
#cmakedefine PIXARLOG_SUPPORT 1

/* Support ThunderScan 4-bit RLE algorithm */
#cmakedefine THUNDER_SUPPORT 1

/* Support Deflate compression */
#cmakedefine ZIP_SUPPORT 1

/* Support strip chopping (whether or not to convert single-strip uncompressed
   images to mutiple strips of ~8Kb to reduce memory usage) */
#cmakedefine STRIPCHOP_DEFAULT ${STRIPCHOP_DEFAULT}

/* Enable SubIFD tag (330) support */
#cmakedefine SUBIFD_SUPPORT 1

/* Treat extra sample as alpha (default enabled). The RGBA interface will
   treat a fourth sample with no EXTRASAMPLE_ value as being ASSOCALPHA. Many
   packages produce RGBA files but don't mark the alpha properly. */
#cmakedefine DEFAULT_EXTRASAMPLE_AS_ALPHA 1

/* Pick up YCbCr subsampling info from the JPEG data stream to support files
   lacking the tag (default enabled). */
#cmakedefine CHECK_JPEG_YCBCR_SUBSAMPLING 1

/* Support MS MDI magic number files as TIFF */
#cmakedefine MDI_SUPPORT 1

/*
 * Feature support definitions.
 * XXX: These macros are obsoleted. Don't use them in your apps!
 * Macros stays here for backward compatibility and should be always defined.
 */
#define COLORIMETRY_SUPPORT
#define YCBCR_SUPPORT
#define CMYK_SUPPORT
#define ICC_SUPPORT
#define PHOTOSHOP_SUPPORT
#define IPTC_SUPPORT

#endif /* _TIFFCONF_ */

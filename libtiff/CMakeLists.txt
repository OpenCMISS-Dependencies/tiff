
 # ***** BEGIN LICENSE BLOCK *****
 # Version: MPL 1.1/GPL 2.0/LGPL 2.1
 #
 # The contents of this file are subject to the Mozilla Public License Version
 # 1.1 (the "License"); you may not use this file except in compliance with
 # the License. You may obtain a copy of the License at
 # http://www.mozilla.org/MPL/
 #
 # Software distributed under the License is distributed on an "AS IS" basis,
 # WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 # for the specific language governing rights and limitations under the
 # License.
 #
 # The Original Code is cmgui
 #
 # The Initial Developer of the Original Code is
 # Auckland Uniservices Ltd, Auckland, New Zealand.
 # Portions created by the Initial Developer are Copyright (C) 2005
 # the Initial Developer. All Rights Reserved.
 #
 # Contributor(s): 
 #
 # Alternatively, the contents of this file may be used under the terms of
 # either the GNU General Public License Version 2 or later (the "GPL"), or
 # the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 # in which case the provisions of the GPL or the LGPL are applicable instead
 # of those above. If you wish to allow use of your version of this file only
 # under the terms of either the GPL or the LGPL, and not to allow others to
 # use your version of this file under the terms of the MPL, indicate your
 # decision by deleting the provisions above and replace them with the notice
 # and other provisions required by the GPL or the LGPL. If you do not delete
 # the provisions above, a recipient may use your version of this file under
 # the terms of any one of the MPL, the GPL or the LGPL.
 #
 # ***** END LICENSE BLOCK ***** */

PROJECT( libtiff )

#SET( LIBRARY_TARGET_NAME tiff PARENT_SCOPE )
STRING( TOUPPER ${LIBRARY_TARGET_NAME} UPPERCASE_LIBRARY_TARGET_NAME )
SET( TIFF_MAJOR_VERSION "3" )
SET( TIFF_MINOR_VERSION "8" )
SET( TIFF_PATCH_VERSION "2" )

#SET( TIFF_OPTIONS TIFF_BUILD_STATIC_LIB TIFF_WITH_ZLIB  TIFF_WITH_JPEG )
#FOREACH( TIFF_OPTION ${TIFF_OPTIONS} )
	#	IF( NOT DEFINED ${TIFF_OPTION} )
		#		SET( ${TIFF_OPTION} ON )
		#	ENDIF( NOT DEFINED ${TIFF_OPTION} )
	#ENDFOREACH( TIFF_OPTION ${TIFF_OPTIONS} )
#OPTION( ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB "Build static tiff library" ${TIFF_BUILD_STATIC_LIB} )
#OPTION( ${TIFF_NAMESPACE_NAME}_WITH_ZLIB "Build in zlib support" ${TIFF_WITH_ZLIB} )
#OPTION( ${TIFF_NAMESPACE_NAME}_WITH_JPEG "Build in jpeg support" ${TIFF_WITH_JPEG} )
OPTION_WITH_DEFAULT( ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB "Build static tiff library" TRUE )
OPTION_WITH_DEFAULT( ${TIFF_NAMESPACE_NAME}_WITH_ZLIB "Build in zlib support" TRUE )
OPTION_WITH_DEFAULT( ${TIFF_NAMESPACE_NAME}_WITH_JPEG "Build in jpeg support" TRUE )

IF( ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )
	SET( LIBRARY_BUILD_TYPE STATIC )
	SET( LIBRARY_INSTALL_TYPE ARCHIVE )
ELSE( ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )
	SET( LIBRARY_BUILD_TYPE SHARED )
	SET( LIBRARY_INSTALL_TYPE LIBRARY )
	IF( WIN32 )
		SET( LIBRARY_INSTALL_TYPE RUNTIME )
	ENDIF( WIN32 )
ENDIF( ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )

IF( ${TIFF_NAMESPACE_NAME}_WITH_ZLIB )
	FIND_PACKAGE( ZLIB REQUIRED )
	INCLUDE_DIRECTORIES( ${ZLIB_INCLUDE_DIRS} )
ENDIF( ${TIFF_NAMESPACE_NAME}_WITH_ZLIB )
IF( ${TIFF_NAMESPACE_NAME}_WITH_JPEG )
	FIND_PACKAGE( JPEG REQUIRED )
	INCLUDE_DIRECTORIES( ${JPEG_INCLUDE_DIRS} )
ENDIF( ${TIFF_NAMESPACE_NAME}_WITH_JPEG )

INCLUDE( ConfigureChecks.cmake )

SET( PACKAGE \"tiff\" )
SET( PACKAGE_BUGREPORT \"tiff@list\" )
SET( PACKAGE_NAME \"LibTIFF Software\" )
SET( PACKAGE_STRING \"LibTIFF Software 3.8.2\" )
SET( PACKAGE_TARNAME \"tiff\" )
SET( PACKAGE_VERSION \"${TIFF_MAJOR_VERSION}.${TIFF_MINOR_VERSION}.${TIFF_PATCH_VERSION}\" )
SET( VERSION \"${TIFF_MAJOR_VERSION}.${TIFF_MINOR_VERSION}.${TIFF_PATCH_VERSION}\" )

SET( TIFF_CONFIG_FILE_1 ${CMAKE_CURRENT_BINARY_DIR}/tiffconf.h )
SET( TIFF_CONFIG_FILE_2 ${CMAKE_CURRENT_BINARY_DIR}/tif_config.h )
IF( WIN32 )
	CONFIGURE_FILE( ${CMAKE_CURRENT_SOURCE_DIR}/tiffconf.h.vc ${TIFF_CONFIG_FILE_1} )
	CONFIGURE_FILE( ${CMAKE_CURRENT_SOURCE_DIR}/tif_config.h.vc ${TIFF_CONFIG_FILE_2} )
ELSE( WIN32 )
	CONFIGURE_FILE( ${CMAKE_CURRENT_SOURCE_DIR}/tiffconf.h.cmake ${TIFF_CONFIG_FILE_1} )
	CONFIGURE_FILE( ${CMAKE_CURRENT_SOURCE_DIR}/tif_config.h.cmake ${TIFF_CONFIG_FILE_2} )
ENDIF( WIN32 )

IF( WIN32 )
	SET( SYSDEP_MODULE tif_win32.c )
	ADD_DEFINITIONS( -DUSE_WIN32_FILEIO )
	IF( MSVC )
		ADD_DEFINITIONS( -D_CRT_SECURE_NO_WARNINGS )
	ENDIF( MSVC )
ELSE( WIN32 )
	SET( SYSDEP_MODULE tif_unix.c )
ENDIF( WIN32 )

SET( TIFF_SRCS
	tif_aux.c
	tif_close.c
	tif_codec.c
	tif_color.c
	tif_compress.c
	tif_dir.c
	tif_dirinfo.c
	tif_dirread.c
	tif_dirwrite.c
	tif_dumpmode.c
	tif_error.c
	tif_extension.c
	tif_fax3.c
	tif_fax3sm.c
	tif_getimage.c
	tif_jpeg.c
	tif_ojpeg.c
	tif_flush.c
	tif_luv.c
	tif_lzw.c
	tif_next.c
	tif_open.c
	tif_packbits.c
	tif_pixarlog.c
	tif_predict.c
	tif_print.c
	tif_read.c
	tif_stream.cxx
	tif_swab.c
	tif_strip.c
	tif_thunder.c
	tif_tile.c
	tif_version.c
	tif_warning.c
	tif_write.c
	tif_zip.c 
	${SYSDEP_MODULE} )
SET( TIFF_PRIVATE_HDRS
	t4.h
	tif_dir.h
	tif_fax3.h
	tif_predict.h
	tiffiop.h
	uvcode.h
	${TIFF_CONFIG_FILE_2} )
SET( TIFF_PUBLIC_HDRS
	tiff.h
	tiffio.h
	tiffio.hxx
	${TIFF_CONFIG_FILE_1}
	tiffvers.h )

SET( CMAKE_DEBUG_POSTFIX "d" )
SET( CMAKE_MFC_FLAG 0 )

IF( WIN32 AND NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )
	SET( TIFF_WIN32_XTRAS 
		libtiff.def )
ENDIF( WIN32 AND NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )

# Best to use 'Header Files' and 'Source Files' because any ungrouped files will be placed there by default
SOURCE_GROUP( "Header Files\\" FILES ${PUBLIC_HDRS} ) 
SOURCE_GROUP( "Header Files\\" FILES ${PRIVATE_HDRS} ) 
SOURCE_GROUP( "Source Files\\" FILES ${TIFF_SRCS} ) 

INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR} )

ADD_LIBRARY( ${LIBRARY_TARGET_NAME} ${LIBRARY_BUILD_TYPE} ${TIFF_SRCS} ${TIFF_HDRS} ${TIFF_PUBLIC_HDRS} ${TIFF_PRIVATE_HDRS} ${TIFF_WIN32_XTRAS} )

IF( ZLIB_FOUND )
	TARGET_LINK_LIBRARIES( ${LIBRARY_TARGET_NAME} ${ZLIB_LIBRARIES} )
ENDIF( ZLIB_FOUND )
IF( JPEG_FOUND )
	TARGET_LINK_LIBRARIES( ${LIBRARY_TARGET_NAME} ${JPEG_LIBRARIES} )
ENDIF( JPEG_FOUND )

# Install targets
IF( WIN32 AND NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )
	SET_TARGET_PROPERTIES(${LIBRARY_TARGET_NAME} PROPERTIES IMPORT_SUFFIX _dll.lib)
	INSTALL( TARGETS ${LIBRARY_TARGET_NAME} ARCHIVE
		DESTINATION lib )
ENDIF( WIN32 AND NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )

INSTALL( TARGETS ${LIBRARY_TARGET_NAME} EXPORT ${LIBRARY_TARGET_NAME}-targets ${LIBRARY_INSTALL_TYPE}
	DESTINATION lib )
INSTALL( FILES ${TIFF_PUBLIC_HDRS}
	DESTINATION include )


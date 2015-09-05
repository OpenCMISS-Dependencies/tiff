
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

option(WITH_ZLIB "Build with ZLIB" ON)
option(WITH_JPEG "Build with JPEG" ON)

if(WITH_ZLIB)
	find_package(ZLIB ${ZLIB_VERSION} REQUIRED)
endif()
if(WITH_JPEG)
	find_package(JPEG ${JPEG_VERSION} REQUIRED)
endif()

include(ConfigureChecks.cmake)

SET( PACKAGE \"tiff\" )
SET( PACKAGE_BUGREPORT \"tiff@list\" )
SET( PACKAGE_NAME \"LibTIFF Software\" )
SET( PACKAGE_STRING \"LibTIFF Software ${PROJECT_VERSION}\" )
SET( PACKAGE_TARNAME \"tiff\" )
SET( PACKAGE_VERSION \"${TIFF_MAJOR_VERSION}.${TIFF_MINOR_VERSION}.${TIFF_PATCH_VERSION}\" )
SET( VERSION \"${TIFF_MAJOR_VERSION}.${TIFF_MINOR_VERSION}.${TIFF_PATCH_VERSION}\" )

set(TIFF_CONFIG_FILE_1 ${CMAKE_CURRENT_BINARY_DIR}/tiffconf.h )
set(TIFF_CONFIG_FILE_2 ${CMAKE_CURRENT_BINARY_DIR}/tif_config.h )
if( WIN32 )
	configure_file( ${CMAKE_CURRENT_SOURCE_DIR}/tiffconf.h.vc ${TIFF_CONFIG_FILE_1} )
	configure_file( ${CMAKE_CURRENT_SOURCE_DIR}/tif_config.h.vc ${TIFF_CONFIG_FILE_2} )
else()
	configure_file( ${CMAKE_CURRENT_SOURCE_DIR}/tiffconf.h.cmake ${TIFF_CONFIG_FILE_1} )
	configure_file( ${CMAKE_CURRENT_SOURCE_DIR}/tif_config.h.cmake ${TIFF_CONFIG_FILE_2} )
endif()

if( WIN32 )
	SET(SYSDEP_MODULE tif_win32.c )
else()
	SET(SYSDEP_MODULE tif_unix.c )
endif()

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

set( CMAKE_DEBUG_POSTFIX "d" )
set( CMAKE_MFC_FLAG 0 )

if(WIN32 AND BUILD_SHARED_LIBS)
	SET( TIFF_WIN32_XTRAS libtiff.def )
endif()

# Best to use 'Header Files' and 'Source Files' because any ungrouped files will be placed there by default
SOURCE_GROUP( "Header Files\\" FILES ${PUBLIC_HDRS} ) 
SOURCE_GROUP( "Header Files\\" FILES ${PRIVATE_HDRS} ) 
SOURCE_GROUP( "Source Files\\" FILES ${TIFF_SRCS} ) 

add_library(tiff ${TIFF_SRCS} ${TIFF_HDRS} ${TIFF_PUBLIC_HDRS} ${TIFF_PRIVATE_HDRS} ${TIFF_WIN32_XTRAS})
target_include_directories(tiff PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
if(WIN32)
	target_compile_definitions(tiff PRIVATE USE_WIN32_FILEIO)
	if( MSVC )
	    target_compile_definitions(tiff PRIVATE _CRT_SECURE_NO_WARNINGS)
	endif()
endif()
if(WITH_ZLIB)
	target_link_libraries(tiff PUBLIC zlib)
endif()
if(WITH_JPEG)
	target_link_libraries(tiff PUBLIC jpeg)
endif()

# Install targets
if( WIN32 AND BUILD_SHARED_LIBS )
	set_target_properties(tiff PROPERTIES IMPORT_SUFFIX _dll.lib)
endif()
install(TARGETS tiff
    EXPORT tiff-config
    DESTINATION lib
    INCLUDES DESTINATION include)
install(FILES ${TIFF_PUBLIC_HDRS}
    DESTINATION include )
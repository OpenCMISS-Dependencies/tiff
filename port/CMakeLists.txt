
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

PROJECT( libport )

#SET( LIBRARY_TARGET_NAME port )
SET( PORT_MAJOR_VERSION "3" )
SET( PORT_MINOR_VERSION "8" )
SET( PORT_PATCH_VERSION "2" )

IF( MSVC )
	ADD_DEFINITIONS( -D_CRT_SECURE_NO_WARNINGS )
ENDIF( MSVC )
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

SET( PORT_SRCS
	strcasecmp.c
	getopt.c )

SET( CMAKE_DEBUG_POSTFIX "d" )
SET( CMAKE_MFC_FLAG 0 )

IF( NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )
	SET( PORT_WIN32_XTRAS )
ENDIF( NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )

ADD_LIBRARY( ${LIBRARY_TARGET_NAME} ${LIBRARY_BUILD_TYPE} ${PORT_SRCS} ${PORT_HDRS} ${PORT_PUBLIC_HDRS} ${PORT_WIN32_XTRAS} )

# Install targets
IF( NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )
	SET_TARGET_PROPERTIES(${LIBRARY_TARGET_NAME} PROPERTIES IMPORT_SUFFIX _dll.lib)
	INSTALL( TARGETS ${LIBRARY_TARGET_NAME} ARCHIVE
		DESTINATION lib )
ENDIF( NOT ${TIFF_NAMESPACE_NAME}_BUILD_STATIC_LIB )

INSTALL( TARGETS ${LIBRARY_TARGET_NAME} 
	EXPORT ${TIFF_LIBRARY_TARGET_NAME}-targets
	${LIBRARY_INSTALL_TYPE} DESTINATION lib )




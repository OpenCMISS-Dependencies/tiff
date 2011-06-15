
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

PROJECT( tools )

SET( TOOLS_MAJOR_VERSION "3" )
SET( TOOLS_MINOR_VERSION "8" )
SET( TOOLS_PATCH_VERSION "2" )

SET( TIFF_APPLICATION_TARGET_NAMES BMP2TIFF TIFFCP TIFFINFO TIFFDUMP
	FAX2TIFF FAX2PS )
FOREACH( APPLICATIION_TARGET ${TIFF_APPLICATION_TARGET_NAMES} )
	STRING( TOLOWER ${APPLICATIION_TARGET} LOWERCASE_APPLICATION_TARGET )
	SET( ${APPLICATIION_TARGET}_TARGET_NAME ${LOWERCASE_APPLICATION_TARGET} )
ENDFOREACH( APPLICATIION_TARGET ${TIFF_APPLICATION_TARGET_NAMES} )

IF( MSVC )
	ADD_DEFINITIONS( -D_CRT_SECURE_NO_WARNINGS )
ENDIF( MSVC )

SET( CMAKE_DEBUG_POSTFIX "d" )
SET( CMAKE_MFC_FLAG 0 )

INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR}/../libtiff ${CMAKE_CURRENT_SOURCE_DIR}/../libtiff )
IF( DEFINED EXCLUDE_TOOLS )
	IF( ${EXCLUDE_TOOLS} STREQUAL "EXCLUDE_FROM_ALL" )
		SET( EXCLUDING_TARGETS TRUE )
	ENDIF( ${EXCLUDE_TOOLS} STREQUAL "EXCLUDE_FROM_ALL" )
ENDIF( DEFINED EXCLUDE_TOOLS )
FOREACH( APPLICATIION_TARGET ${TIFF_APPLICATION_TARGET_NAMES} )
	STRING( TOLOWER ${APPLICATIION_TARGET} LOWERCASE_APPLICATION_TARGET )
	SET( ${APPLICATIION_TARGET}_SRCS
		${LOWERCASE_APPLICATION_TARGET}.c )

	ADD_EXECUTABLE( ${${APPLICATIION_TARGET}_TARGET_NAME} ${EXCLUDE_TOOLS} ${${APPLICATIION_TARGET}_SRCS} )
	TARGET_LINK_LIBRARIES( ${${APPLICATIION_TARGET}_TARGET_NAME} tiff )
	IF( WIN32 )
		TARGET_LINK_LIBRARIES( ${${APPLICATIION_TARGET}_TARGET_NAME} port )
	ENDIF( WIN32 )

	# Install targets
	IF( NOT EXCLUDING_TARGETS )
		INSTALL( TARGETS ${${APPLICATIION_TARGET}_TARGET_NAME} RUNTIME DESTINATION bin )
	ENDIF( NOT EXCLUDING_TARGETS )
ENDFOREACH( APPLICATIION_TARGET ${TIFF_APPLICATION_TARGET_NAMES} )







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

set(TIFF_APPLICATIONS 
    BMP2TIFF TIFFCP TIFFINFO
    TIFFDUMP FAX2TIFF FAX2PS)

SET( CMAKE_DEBUG_POSTFIX "d" )
SET( CMAKE_MFC_FLAG 0 )

foreach(TIFF_APP ${TIFF_APPLICATIONS} )
	string(TOLOWER ${TIFF_APP} tiff_app)
	add_executable( ${tiff_app} ${EXCLUDE_TOOLS} ${tiff_app}.c)
	target_link_libraries(${tiff_app} tiff)
	target_include_directories(${tiff_app} PRIVATE ${CMAKE_CURRENT_BINARY_DIR}/../libtiff ${CMAKE_CURRENT_SOURCE_DIR}/../libtiff)
	if( WIN32 )
		target_link_libraries(${tiff_app} port)
		if (MSVC)
		    target_compile_definitions(${tiff_app} _CRT_SECURE_NO_WARNINGS)
		endif()
    elseif(UNIX)
        target_link_libraries(${tiff_app} m)		
	endif()

	# Install targets
	install(TARGETS ${tiff_app}
	    EXPORT tiff-config
	    DESTINATION bin)
endforeach()






cmake_minimum_required (VERSION 3.8)


function(ripen_add_sf)

if(NOT DEFINED RIPEN_SF)
set(RIPEN_SF ${ARGV} CACHE INTERNAL "list of all source files path that need to be added to the Ripen executable")
else()

# check if the file is not already in the list
foreach(SF IN LISTS ARGV)

if(NOT ${SF} IN_LIST ARGV)
list(APPEND RIPPEN_SF "${ARGV}")
endif()

endforeach()

endif()
endfunction(ripen_add_sf)

macro(PREPEND_LIST_ELEMENTS)
set(PREFIX_VALUE ARGV0)
set(LIST_IN ARGV)
list(REMOVE_ITEM LIST_IN ARGV0)

foreach(arg IN LISTS LIST_IN)
set(arg ${PREFIX_VALUE}${arg})
endforeach()
endmacro(PREPEND_LIST_ELEMENTS)
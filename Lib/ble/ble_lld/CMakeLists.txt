# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")

# TODO: break these into inc/src's
set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/hal
    ${CMAKE_CURRENT_LIST_DIR}/lld
)

# Define library
set ( srcs
    "${srcs}"
    ${CMAKE_CURRENT_LIST_DIR}/hal/ble_hal.c

    ${CMAKE_CURRENT_LIST_DIR}/lld/ble_lld.c
)

set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)

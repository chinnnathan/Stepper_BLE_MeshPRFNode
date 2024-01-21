# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")


add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/ble_lld)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/core)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/mesh)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/svc)


set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/Inc
)

# Define library
# set ( srcs
#     "${srcs}"
# )

# set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)

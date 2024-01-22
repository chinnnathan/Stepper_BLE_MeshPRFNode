# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")

set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/Inc
)

# Define library
set ( srcs
    "${srcs}"
    # ${CMAKE_CURRENT_LIST_DIR}/Src/bas.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/bls.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/bvopus_service_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/common_blesvc.h
    # ${CMAKE_CURRENT_LIST_DIR}/Src/crs_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/dis.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/eds_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/hids.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/hrs.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/hts.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/ias.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/lls.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/mesh.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/motenv_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/opus_interface_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/otas_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/p2p_stm.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/svc_ctl.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/template_stm.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/tps.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/zdd_stm.c
)

set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)

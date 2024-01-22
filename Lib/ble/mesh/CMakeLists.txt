# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")

set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Inc
    ${CMAKE_CURRENT_LIST_DIR}/Inc
)

# Define library
set ( srcs
    "${srcs}"

    # ${CMAKE_CURRENT_LIST_DIR}/Src/appli_test.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/mesh_cfg.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/serial_ctrl.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/serial_if.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/serial_prvn.c
    # ${CMAKE_CURRENT_LIST_DIR}/Src/serial_ut.c


    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/common.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/config_client.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/generic.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/generic_client.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/light.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/light_client.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/light_lc.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/sensors.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/sensors_client.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/time_scene.c
    ${CMAKE_CURRENT_LIST_DIR}/MeshModel/Src/vendor.c

    # ${CMAKE_CURRENT_LIST_DIR}/PAL/STM32WB/pal_nvm.c


    # ${CMAKE_CURRENT_LIST_DIR}/Library/libBle_Mesh.cpp

)

set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)

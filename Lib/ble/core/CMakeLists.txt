# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")

# TODO: break these into inc/src's
set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/Inc
)

# Define library
set ( srcs
    "${srcs}"
    ${CMAKE_CURRENT_LIST_DIR}/Src/ble_events.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/ble_gap_aci.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/ble_gatt_aci.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/ble_hal_aci.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/ble_hci_le.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/ble_l2cap_aci.c
    ${CMAKE_CURRENT_LIST_DIR}/Src/osal.c
)

set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)

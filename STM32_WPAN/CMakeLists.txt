# pull library name from directory name
get_filename_component(libname ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" libname ${libname})

message(STATUS "Adding the libname: ${libname}")

set(libdeps
    "${libdeps}"
    ${CMAKE_CURRENT_LIST_DIR}/App/Inc
)

# Define library
set ( srcs
    "${srcs}"
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/user_if.c


    ${CMAKE_CURRENT_LIST_DIR}/App/Src/PWM_config.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/PWM_handlers.c
    # ${CMAKE_CURRENT_LIST_DIR}/App/Src/app_ble copy.c'
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/app_ble.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_config.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_config_client.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_generic.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_generic_client.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_light.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_light_client.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_light_lc.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_mesh.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_nvm.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_sensor.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_sensors_client.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/appli_vendor.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/data.s
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/models_if.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/p2p_server_app.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/pal_nvm.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/svcctl_conf.c
    ${CMAKE_CURRENT_LIST_DIR}/App/Src/tl_if.c

    ${CMAKE_CURRENT_LIST_DIR}/Target/hw_ipcc.c

)

set (srcs "${srcs}" PARENT_SCOPE)
set (libdeps "${libdeps}" PARENT_SCOPE)

# Install script for directory: /home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/arm-none-eabi-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Core/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Lib/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Drivers/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Lib/Servo/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Lib/intf/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Lib/ble/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Lib/utility/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/Utilities/cmake_install.cmake")
  include("/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/STM32_WPAN/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/nchinn/workspace/STM32/WB55_cmake/Stepper_BLE_MeshPRFNode/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

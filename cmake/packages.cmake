cmake_minimum_required(VERSION 3.18)
if(${CMAKE_VERSION} VERSION_LESS 3.18)
cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
else()
cmake_policy(VERSION 3.18)
endif()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/packages/")

include(FindGit)
find_package(Git)
if (NOT Git_FOUND)
    message(FATAL_ERROR "Git not found!")
endif ()

find_package(Boost      REQUIRED)
find_package(Qt         REQUIRED)
find_package(OpenSSL    REQUIRED)
find_package(OpenMesh   REQUIRED)
find_package(GTest      REQUIRED)
find_package(DocTest    REQUIRED)
find_package(Catch2     REQUIRED)
find_package(Fmt        REQUIRED)
find_package(JSon       REQUIRED)
find_package(Ctre       REQUIRED)
find_package(Zlib       REQUIRED)
find_package(Eigen      REQUIRED)

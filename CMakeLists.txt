cmake_minimum_required(VERSION 3.7)

if (${CMAKE_VERSION} VERSION_LESS 3.28)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
else()
    cmake_policy(VERSION 3.28)
endif()

project(OpenGL VERSION 1.0
        DESCRIPTION "OpenGL Base Project"
        LANGUAGES CXX)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/shaders/vertex.vs ${CMAKE_CURRENT_BINARY_DIR}/shaders/vertex.vs COPYONLY)
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/shaders/fragment.fs ${CMAKE_CURRENT_BINARY_DIR}/shaders/fragment.fs 
                COPYONLY)

add_library(mainlib STATIC src/main.cpp src/glad.cpp)
target_include_directories(mainlib PUBLIC include resources utils)
target_link_directories(mainlib PUBLIC lib)
target_compile_features(mainlib PUBLIC cxx_std_11)

add_executable(main src/main.cpp)
target_link_libraries(main PUBLIC mainlib glfw3)

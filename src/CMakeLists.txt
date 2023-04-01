find_package(ZLIB REQUIRED)
add_library(my_template multiply.cpp compress.cpp)

target_link_libraries(my_template ZLIB::ZLIB)

target_include_directories(my_template PUBLIC include)

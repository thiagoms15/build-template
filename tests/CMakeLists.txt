find_package(GTest REQUIRED)

add_executable(my_template_tests multiply_test.cpp compress_test.cpp main.cpp)

target_link_libraries(my_template_tests
 PRIVATE
  GTest::GTest
  my_template)

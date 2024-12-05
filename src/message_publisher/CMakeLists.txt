cmake_minimum_required(VERSION 3.8)
project(message_publisher)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rclcpp REQUIRED)


add_executable(message_pub src/main.cpp)

ament_target_dependencies(message_pub
  "rclcpp"
  "std_msgs"
)

install(TARGETS
message_pub
        DESTINATION lib/${PROJECT_NAME}
)
install(DIRECTORY launch
        DESTINATION share/${PROJECT_NAME})

ament_package()

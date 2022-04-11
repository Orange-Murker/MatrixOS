# Apply board specific content here
target_include_directories(${COMPONENT_LIB} PRIVATE .)

idf_build_get_property(idf_target IDF_TARGET)

message(STATUS "Apply ${DEVICE}(${idf_target}) specific options for component: ${COMPONENT_TARGET}")

target_compile_options(${COMPONENT_TARGET} PUBLIC
  "-DCFG_TUSB_MCU=OPT_MCU_ESP32S2"
  "-DCFG_TUSB_OS=OPT_OS_FREERTOS"
)
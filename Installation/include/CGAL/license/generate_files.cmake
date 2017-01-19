file(STRINGS package_list.txt package_list)

foreach(LINE ${package_list})
  string(REGEX MATCH "^[^ ]*" PACKAGE_NAME ${LINE})
  string(TOUPPER ${PACKAGE_NAME} PACKAGE_CODE_NAME)
  string(REPLACE "${PACKAGE_NAME}" "" PACKAGE_PRETTY_NAME ${LINE})
  string(STRIP "${PACKAGE_PRETTY_NAME}" PACKAGE_PRETTY_NAME)
  configure_file(gpl.h.in ${PACKAGE_NAME}.h @ONLY NEWLINE_STYLE LF)
endforeach()

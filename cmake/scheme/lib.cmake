akt_add_library(${AKT_TARGET} exe_targets ${AKT_CHILD_SRCS})
target_link_libraries(${AKT_TARGET} PUBLIC 
    ${AKT_CHILD_TARGETS}
)
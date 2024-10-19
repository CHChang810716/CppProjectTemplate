# akt_vscode_gen_c_cpp_properties(customized path c_cpp_properties.json.in)
#
# customized c_cpp_properties template content
# {
#     "configurations": [
#         {
#             "name": "AKT-default",
#             "includePath": [
#                 @AKT_VSCODE_C_CPP_INCLUDES@
#             ],
#             "defines": [
#             ],
#             "compilerPath": "@CMAKE_CXX_COMPILER@",
#             "cStandard": "c@CMAKE_C_STANDARD@",
#             "cppStandard": "c++@CMAKE_CXX_STANDARD@",
#             "intelliSenseMode": "@AKT_VSCODE_COMPILER_ID@-x64"
#         }
#     ],
#     "version": 4
# }
# Note that AKT_VSCODE_C_CPP_INCLUDES will include the hunter include path but not package include path.
# Which means if the package include path is unusual and not at <hunter install path>/include then
# such an include path will not included in AKT_VSCODE_C_CPP_INCLUDES.
akt_vscode_gen_c_cpp_properties()
if(NOT PRESERVE_VSCODE_LAUNCH AND EXISTS ${PROJECT_SOURCE_DIR}/.vscode/launch.json)
  file(REMOVE ${PROJECT_SOURCE_DIR}/.vscode/launch.json)
endif()
akt_vscode_gen_launch()
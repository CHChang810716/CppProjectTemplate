hunter_config(
    OpenCV
    VERSION "${HUNTER_OpenCV_VERSION}"
    CMAKE_ARGS 
    	WITH_IPP=OFF
        WITH_PROTOBUF=OFF
        WITH_JASPER=OFF
)

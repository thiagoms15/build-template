cc_library(
    name = "my-template",
    hdrs = glob(["include/**/*.h"]),
    includes=["include"],
    srcs=glob(["**/*.cpp"]),
    visibility = ["//tests:__pkg__"],
    linkopts = ["-lz"]
)


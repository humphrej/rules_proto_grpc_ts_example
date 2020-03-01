package(default_visibility = ["//visibility:public"])

load("@rules_proto_grpc//java:java_proto_library.bzl", "java_proto_library")
load("@rules_proto_grpc//java:java_grpc_library.bzl", "java_grpc_library")
load("@rules_proto_grpc//github.com/grpc/grpc-web:defs.bzl", "ts_grpc_compile", "commonjs_grpc_compile")

proto_library(
    name = "sysinternals_proto",
    srcs = [
        "sysinternals.proto",
    ],
    deps = [
        "@com_google_protobuf//:empty_proto",
    ],
)

java_grpc_library(
    name = "sysinternals_java_proto",
    deps = [":sysinternals_proto"],
)

ts_grpc_compile(
    name = "sysinternals_ts_proto",
    deps = [":sysinternals_proto"],
)

commonjs_grpc_compile(
    name = "sysinternals_js_proto",
    deps = [":sysinternals_proto"],
    verbose=1
)


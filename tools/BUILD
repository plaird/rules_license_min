load("@rules_python//python:defs.bzl", "py_binary", "py_library")

package(
    default_applicable_licenses = ["//:license", "//:package_info"],
    default_visibility = ["//visibility:public"],
)

py_library(
    name = "sbom_lib",
    srcs = ["sbom.py"],
    visibility = ["//visibility:public"],
)

py_binary(
    name = "write_sbom",
    srcs = ["write_sbom.py"],
    deps = [":sbom_lib"],
    python_version = "PY3",
    visibility = ["//visibility:public"],
)

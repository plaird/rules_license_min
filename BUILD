# Copyright 2022 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@rules_license_min//:version.bzl", "version")
load("@rules_license_min//rules:current_module_package_info.bzl", "current_module_package_info")
load("@rules_license_min//rules:license.bzl", "license")
load("@rules_license_min//rules:package_info.bzl", "package_info")

package(
    default_applicable_licenses = [":license", ":package_info"],
    default_visibility = ["//visibility:public"],
)

licenses(["notice"])

license(
    name = "license",
    license_kinds = [
        "@rules_license_min//licenses/spdx:Apache-2.0",
    ],
    license_text = "LICENSE",
)

current_module_package_info(
    name = "package_info",
)

exports_files(
    ["LICENSE"],
    visibility = ["//visibility:public"],
)

exports_files(
    glob([
        "*.bzl",
    ]),
    visibility = ["//visibility:public"],
)

filegroup(
    name = "standard_package",
    srcs = glob([
        "*.bzl",
        "*.md",
    ]) + [
        "BUILD",
        "LICENSE",
        "MODULE.bazel",
    ],
    visibility = ["//distro:__pkg__"],
)

filegroup(
    name = "docs_deps",
    srcs = [
        ":standard_package",
        "//rules:standard_package",
        "//rules_gathering:standard_package",
    ],
    visibility = ["//visibility:public"],
)

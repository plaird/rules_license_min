# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""Forwarder for gather_metadata_info.

To be deleted before version 0.1.0
"""
load(
    "@rules_license_min//rules_gathering:gather_metadata.bzl",
    _gather_metadata_info = "gather_metadata_info",
    _gather_metadata_info_and_write = "gather_metadata_info_and_write",
)

gather_metadata_info = _gather_metadata_info
gather_metadata_info_and_write = _gather_metadata_info_and_write

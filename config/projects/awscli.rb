# encoding: utf-8
# frozen_string_literal: true

#
# Copyright 2017, Socrata, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

name 'awscli'
maintainer 'Socrata Engineering <sysadmin@socrata.com>'
homepage 'https://github.com/socrata-platform/awscli-omnibus'

# Defaults to C:/awscli on Windows
# and /opt/awscli on all other platforms
install_dir "#{default_root}/#{name}"

build_version '1.11.71'
build_iteration 1

dependency 'preparation'
dependency 'awscli'
dependency 'version-manifest'

override :setuptools, version: '20.0'

exclude '**/.git'
exclude '**/bundler/git'

package :pkg do
  identifier 'net.socrata.pkg.awscli'
end
compress :dmg

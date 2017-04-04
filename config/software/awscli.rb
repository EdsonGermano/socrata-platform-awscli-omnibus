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

name 'awscli'
default_version '1.11.71'

version('1.11.71') { source md5: '25670034b1581e5de800eaadece3d977' }

dependency 'python'
dependency 'setuptools'

source url: "https://github.com/aws/aws-cli/archive/#{version}.tar.gz"

relative_path "aws-cli-#{version}"

build do
  env = with_standard_compiler_flags(with_embedded_path)
  command "#{install_dir}/embedded/bin/python setup.py install " \
          "--prefix=#{install_dir}/embedded", env: env
  command "cp #{install_dir}/embedded/bin/aws " \
          "#{install_dir}/bin/aws", env: env
end

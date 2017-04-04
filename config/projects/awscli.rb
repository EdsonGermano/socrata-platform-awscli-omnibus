#
# Copyright 2017 YOUR NAME
#
# All Rights Reserved.
#

name "awscli"
maintainer "CHANGE ME"
homepage "https://CHANGE-ME.com"

# Defaults to C:/awscli on Windows
# and /opt/awscli on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# awscli dependencies/components
# dependency "somedep"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"

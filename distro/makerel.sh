#!/bin/bash

if [[ $# != 1 ]] ; then
  echo "usage: $0 version"
  exit 1
fi
version="$1"

if [[ ! -f WORKSPACE ]] ; then
  echo 'You must run this command from the top of the workspace.'
  exit 1
fi

# tar on macos builds a file with different checksums each time.
if [[ $(uname) != 'Linux' ]] ; then
  echo 'You must run this command from a linux machine.'
  exit 1
fi


dist_file="/tmp/platforms-${version}.tar.gz"
tar czf "$dist_file" BUILD LICENSE WORKSPACE cpu os
sha256=$(shasum -a256 "$dist_file" | cut -d' ' -f1)

cat <<INP


1. Create a new release using the tag $version
2. Copy/paste the text below into the release description field.
3. Upload $dist_file as an artifact.
4. Copy $dist_file to the mirror site.
5. Create the release.
6. Update Bazel to point to this new release. See the readme.

=============== CUT HERE =============== 
**WORKSPACE setup**

\`\`\`
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
    name = "platforms",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/platforms/releases/download/$version/platforms-$version.tar.gz",
        "https://github.com/bazelbuild/platforms/releases/download/$version/platforms-$version.tar.gz",
    ],
    sha256 = "$sha256",
)
\`\`\`
=============== CUT HERE =============== 
INP


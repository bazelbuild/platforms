# Updating bazelbuild/platforms

## Step 1: Make the release

1. Pick a new version number.
1. Prepare a release bug ([example](https://github.com/bazelbuild/platforms/issues/112)).
1. Submit a PR that updates `MODULE.bazel` and `version.bzl` to the new version ([example](https://github.com/bazelbuild/platforms/pull/117)).
1. [Start](https://github.com/bazelbuild/platforms/releases/new) a new release draft. 
1. Run `distro/makerel.sh` to locally create the release. This creates a release archive (`.tar.gz`) on the local machine, emits suggested release notes, and emits instructions for mirroring the archive to `htps://mirror.bazel.build`.
1. Using the results of the last step, fill out the release draft consistent with [previous releases](https://github.com/bazelbuild/platforms/releases). Add the local `platforms-<version>.tar.gz` to the draft's `Attach binaries by dropping them here or selecting them` pane.
1. Click `Publish release` to release.

## Step 2: Register with the Bazel Central Registry
1. Create a PR on https://github.com/bazelbuild/bazel-central-registry with [this pattern](https://github.com/bazelbuild/bazel-central-registry/pull/4677).
1. `source.json`'s `integrity` field is a base64 encoding of the archives `sha256` hash. If you don't know how to create this directly, the PR presubmit will fail and show the expected hash.
1. When this PR is submitted, the release is done and available in https://bcr.bazel.build.

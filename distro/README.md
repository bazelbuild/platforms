# Updating bazelbuild/platforms

## Step 1: Make the release

- Pick a new version number
- run distro/make_rel.sh *version*
- Go to the [Releases](https://github.com/bazelbuild/platforms/releases) page
- Draft a new release
  - Name the release with a version number
  - Use the version number as the title
  - Copy the description that make_rel.sh produced to the description field.
  - upload the generated tar file

- use https://github.com/bazelbuild/continuous-integration/blob/master/mirror/mirror.sh to mirror the file

## Step 2: Update Bazel



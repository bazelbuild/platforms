# Updating bazelbuild/platforms

WARNING: These are what worked last time. Reality might be different. 

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

- edit `WORKSPACE`
- there are probably 7 places to edit
- merge the PR

Sample diff

```
***************
*** 161,167 ****
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz",
          # bazelbuild/platforms
!         "46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
          # bazelbuild/rules_cc
--- 161,167 ----
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz",
          # bazelbuild/platforms
!         "platforms-0.0.2.tar.gz",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
          # bazelbuild/rules_cc
***************
*** 203,209 ****
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz": "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
          # bazelbuild/platforms
!         "46993efdd33b73649796c5fc5c9efb193ae19d51.zip": "66184688debeeefcc2a16a2f80b03f514deac8346fe888fb7e691a52c023dd88",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
          # bazelbuild/rules_cc
--- 203,209 ----
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz": "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
          # bazelbuild/platforms
!         "platforms-0.0.2.tar.gz": "48a2d8d343863989c232843e01afc8a986eb8738766bfd8611420a7db8f6f0c3",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
          # bazelbuild/rules_cc
***************
*** 268,276 ****
              "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
          ],
          # bazelbuild/platforms
!         "46993efdd33b73649796c5fc5c9efb193ae19d51.zip": [
!             "https://mirror.bazel.build/github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
!             "https://github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
          ],
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip": [
--- 268,276 ----
              "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
          ],
          # bazelbuild/platforms
!         "platforms-0.0.2.tar.gz": [
!             "https://mirror.bazel.build/github.com/bazelbuild/platforms/releases/download/0.0.2/platforms-0.0.2.tar.gz",
!             "https://github.com/bazelbuild/platforms/releases/download/0.0.2/platforms-0.0.2.tar.gz",
          ],
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip": [
***************
*** 563,569 ****
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz",
          # bazelbuild/platforms
!         "46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
          # bazelbuild/rules_cc
--- 563,569 ----
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz",
          # bazelbuild/platforms
!         "platforms-0.0.2.tar.gz",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip",
          # bazelbuild/rules_cc
***************
*** 598,604 ****
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz": "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
          # bazelbuild/platforms
!         "46993efdd33b73649796c5fc5c9efb193ae19d51.zip": "66184688debeeefcc2a16a2f80b03f514deac8346fe888fb7e691a52c023dd88",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
          # bazelbuild/rules_cc
--- 598,604 ----
          # bazelbuild/bazel-skylib
          "bazel-skylib-1.0.3.tar.gz": "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
          # bazelbuild/platforms
!         "platforms-0.0.2.tar.gz": "48a2d8d343863989c232843e01afc8a986eb8738766bfd8611420a7db8f6f0c3",
          # bazelbuild/rules_java
          "7cf3cefd652008d0a64a419c34c13bdca6c8f178.zip": "bc81f1ba47ef5cc68ad32225c3d0e70b8c6f6077663835438da8d5733f917598",
          # bazelbuild/rules_cc
***************
*** 637,643 ****
              "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
          ],
          # bazelbuild/platforms
!         "46993efdd33b73649796c5fc5c9efb193ae19d51.zip": [
              "https://mirror.bazel.build/github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
              "https://github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
          ],
--- 637,643 ----
              "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
          ],
          # bazelbuild/platforms
!         "platforms-0.0.2.tar.gz": [
              "https://mirror.bazel.build/github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
              "https://github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
          ],
***************
*** 747,757 ****
  
  http_archive(
      name = "platforms",
!     sha256 = "66184688debeeefcc2a16a2f80b03f514deac8346fe888fb7e691a52c023dd88",
!     strip_prefix = "platforms-46993efdd33b73649796c5fc5c9efb193ae19d51",
      urls = [
!         "https://mirror.bazel.build/github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
!         "https://github.com/bazelbuild/platforms/archive/46993efdd33b73649796c5fc5c9efb193ae19d51.zip",
      ],
  )
  
--- 747,756 ----
  
  http_archive(
      name = "platforms",
!     sha256 = "48a2d8d343863989c232843e01afc8a986eb8738766bfd8611420a7db8f6f0c3",
      urls = [
!         "https://mirror.bazel.build/github.com/bazelbuild/platforms/releases/download/0.0.2/platforms-0.0.2.tar.gz",
!         "https://github.com/bazelbuild/platforms/releases/download/0.0.2/platforms-0.0.2.tar.gz",
      ],
  )
``` 

# Releasing a SwiftPM package

Once a new version of heap-ios-sdk has shipped to the CDN and CocoaPods, it can be released to SwiftPM the following sequence of
commands.

```bash
HEAP_VERSION=8.1.0 # Or whatever the appropriate version is.
cd scripts
./prepare-for-release.sh "$HEAP_VERSION"
./validate.sh
git commit -am "Releasing $HEAP_VERSION"
git push
# If the current branch isn't master, go through the PR process.
./release.sh "$HEAP_VERSION"
```

`prepare-for-release.sh` is responsible for updating Package.swift, README.md, and CHANGELOG.md with values from
the zip file on the CDN.  It does not commit the change, leaving that up to the developer.

`validate.sh` attempts to build a simple swift package that references the package to validate that it will in fact work.

`release.sh` peforms a handful of checks to make sure everything is up-to-date, then pushes a branch with the specified version to the
server.  This allows SwiftPM to find the updated version of the library.  Unlike the other scripts, this onemust be run on a clean `master`
branch without any outstanding changes.

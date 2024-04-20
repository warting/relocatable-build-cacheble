#!/bin/bash -eu

echo "Verifying identical builds of App1 and App2 produce identical outputs"

echo "Cleaning up"
rm -Rf App1/.gradle
rm -Rf App2/.gradle
rm -Rf App1/build
rm -Rf App2/build
rm -Rf App1/app/build
rm -Rf App2/app/build
rm -Rf App1/mylibrary/build
rm -Rf App2/mylibrary/build

echo "Check diff before build"
diff -r -q App1 App2

echo "Building App1"
cd App1
./gradlew clean compileDebugLibraryResources

echo "Building App2"
cd ../App2
./gradlew clean compileDebugLibraryResources

cd ..

echo "Check diff after build"
diff -r -q App1 App2
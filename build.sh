#!/bin/bash

CONAN_PROFILE_DEFAULT="$HOME/.conan2/profiles/default"

if [[ -f "${CONAN_PROFILE_DEFAULT}" ]]; then
    echo "Found default profile in '${CONAN_PROFILE_DEFAULT}'"
else
    echo "Generating new default profile in '${CONAN_PROFILE_DEFAULT}'"
    conan profile detect --force
fi

echo "Clean previous build"
rm -rf build
mkdir build

echo "Installing deps..."
conan install . --output-folder=build --build=missing

echo "Build with ninja"
pushd build
cmake -GNinja  ..
ninja

result=$?
if [ ${result} = 0 ]; then
    echo "Done. Build finished with success."
fi

popd

# _Build Template_
<img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=E51C44&labelColor=0A1033">

This is a repository template to build my personal projects in `C++` using:

- Conan;
- CMake;
- Ninja;
- GTest
- Bazel

___

## :mage_man: 1. How to build

### CMake and ninja
- Using the script `build.sh`
```
./build.sh
```

### Bazel
- run the command:
```
$ bazel --output_base=./build  build //tests:my-template-tests
```

___

## :zombie: 2. TODO :rotating_light:
- Add package management using Bazel, similar to Conan (e.g. zlib).

___

## :page_with_curl: 3. License
This project is under MIT license. Take a look in [LICENSE](LICENSE) for more details.

# Rick and Morty Info

[![Actions Status](https://github.com/excogitatr/rick-and-morty-info/workflows/deploy/badge.svg?branch=v1.1.0)](https://github.com/excogitatr/rick-and-morty-info/actions?query=workflow%3Adeploy)
[![Actions Status](https://github.com/excogitatr/rick-and-morty-info/workflows/build/badge.svg)](https://github.com/excogitatr/rick-and-morty-info/actions?query=workflow%3Abuild)
[![codecov](https://codecov.io/gh/excogitatr/rick-and-morty-info/branch/master/graph/badge.svg)](https://codecov.io/gh/excogitatr/rick-and-morty-info)
[![Flutter version](https://img.shields.io/badge/flutter-v1.17.0-blue?logo=flutter)](https://flutter.dev/docs/development/tools/sdk/releases)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

A simple app to demonstrate Clean Architecture with GraphQL and flutter_bloc

## Motivation

In [Martin Fowler's](https://martinfowler.com/)'s words,

“Any fool can write code that a computer can understand. Good programmers write code that humans can understand.” (*[Refactoring: Improving the Design of Existing Code](https://www.csie.ntu.edu.tw/~r95004/Refactoring_improving_the_design_of_existing_code.pdf)*, 1999, p. 22)

With this idea in mind, I wanted to demonstrate how we can make a simple app in production grade (and I hope I made my case).

## "Production level" implementations

- CI/CD with [GitHub Actions](https://github.com/features/actions)
- Githooks to enusre clean commit and push
  - Pre commit formats with `flutter format`
  - Pre push checks the code with `flutter analyze` and `flutter test`
- Linting style with [Effective Dart](https://dart.dev/guides/language/effective-dart)
- Test coverage with [Codecov](https://codecov.io/)
- Dependency Injection with [injectable](https://pub.dev/packages/injectable) and [get_it](https://pub.dev/packages/get_it)
- Testing with [mockito](https://pub.dev/packages/mockito) and [bloc_test](https://pub.dev/packages/bloc_test)

## Screenshots

<p>
<img src="https://raw.githubusercontent.com/excogitatr/rick-and-morty-info/develop/assets/screen_1.png" alt="Screen 1" width="250">
<img src="https://raw.githubusercontent.com/excogitatr/rick-and-morty-info/develop/assets/screen_2.png" alt="Screen 2" width="250">
  <img src="https://raw.githubusercontent.com/excogitatr/rick-and-morty-info/develop/assets/screen_3.png" alt="Screen 3" width="250">
</p>

## Installation

- Check if you are in the beta channel of flutter SDK and the version v1.15.17 or higher (I appologize for using beta version). [Instruction to change flutter channel](https://github.com/flutter/flutter/wiki/Flutter-build-release-channels#how-to-change-channels).
- Clone the repo
  ```sh
  git clone https://github.com/excogitatr/rick-and-morty-info.git
  ```
- And then we can use the normal build and run procedure
  ```sh
  flutter pub get
  flutter run
  ```
- Some files like `*.freezed.dart`, `*.g.dart`, `*.iconfig.dart` are auto generated. If there is any issue from these files just run this command to regenerate them.
  ```sh
  flutter pub run build_runner watch --delete-conflicting-outputs
  ```

## Thanks to

- [unclebob](https://github.com/unclebob) (For the infamous Clean Architecture)
- [resocoder](https://github.com/ResoDev) (Followed his style in Clean architecture)
- [felangel](https://github.com/felangel) (For his amazing state management solution)
- [Axel Fuhrmann](https://github.com/afuh) (For the Rick and Morty [GraphQL API](https://rickandmortyapi.com))
- Authors of all the packages I have used, who made our lives easier.

## Getting Started

For help getting started with Flutter, view the
[online documentation](https://flutter.io/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

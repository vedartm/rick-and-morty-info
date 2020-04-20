# Rick and Morty Info

[![Actions Status](https://github.com/excogitatr/rick-and-morty-info/workflows/deploy/badge.svg)](https://github.com/excogitatr/ebeep-main/actions?query=workflow%3Aci)
[![Actions Status](https://github.com/excogitatr/rick-and-morty-info/workflows/build/badge.svg)](https://github.com/excogitatr/ebeep-main/actions?query=workflow%3Aci)
[![codecov](https://codecov.io/gh/excogitatr/rick-and-morty-info/branch/master/graph/badge.svg)](https://codecov.io/gh/excogitatr/rick-and-morty-info)
[![Flutter version](https://img.shields.io/badge/flutter-v1.17.0-blue?logo=flutter)](https://flutter.dev/docs/development/tools/sdk/releases)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)

A simple app to demonstrate Clean Architecture with GraphQL and flutter_bloc

## Motivation

From [Martin Fouler](https://en.wikiquote.org/wiki/Martin_Fowler)'s words,

“Any fool can write code that a computer can understand. Good programmers write code that humans can understand.”

With this idea in mind, I wanted to demostrate how can one convert a simple app to production level.

## Production level implementations

- CI/CD with [GitHub Actions](https://github.com/features/actions)
- Githooks to enusre clean commit and push
  - Pre commit formats with `flutter format`
  - Pre push checks the code with `flutter analyze` and `flutter test`
- Linting style with [Effective Dart](https://dart.dev/guides/language/effective-dart)
- Test coverage with [Codecov](https://codecov.io/)
- Dependency Injection with [injectable](https://pub.dev/packages/injectable)
- Testing with [mockito](https://pub.dev/packages/mockito) and [bloc_test](https://pub.dev/packages/bloc_test)

## Tribute

- [unclebob](https://github.com/unclebob) (For the infamous Clean Architecture)
- [resocoder](https://github.com/ResoDev) (Followed his style in Clean architecture)
- [felangel](https://github.com/felangel) (For his amazing state management solution)
- Authors of all the packages I have used, who made our lives easier.

## Getting Started

For help getting started with Flutter, view the
[online documentation](https://flutter.io/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

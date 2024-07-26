# Surf Flutter Summer School 24

## Basic Information

### Settings

Project line length: 120 characters.

### Dependencies

Run this command to get up-to-date versions of dependencies:

```bash
fvm flutter pub get --enforce-lockfile
```

## Flutter Version Management (FVM)

### Flutter and Dart FVM Versions of the Project

Flutter: **\_3.22.2\_** / Dart SDK: **\_3.4.3\_**

### FVM Workflow

The project uses [FVM](https://fvm.app/) for Flutter version management. Installation and IDE configuration for working with FVM are described [here](https://fvm.app/docs/getting_started/installation/) and [here](https://fvm.app/docs/getting_started/configuration/).

For installation of the project version of Flutter, run the command:

```bash
fvm install
```

For VSCode IDE, you can also run the script `fvm_vscode.sh`:

```bash
sh scripts/fvm_vscode.sh
```

You need to use `fvm flutter ...` everywhere instead of just `flutter ...` when working with the project.

## Code Generation

Basic command for code generation:

```bash
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

### Assets Codegen

You can easily add assets to your project by following these steps:

1. Add asset to your assets folder (make sure you specify this folder in the `asset` section of your [pubspec.yaml](pubspec.yaml)).
2. Run script `spider_build.sh`:

    sh scripts/spider_build.sh

Spider configuration file is located [here](spider.yaml).

## Requirements for Running the App

empty...

## Project Scripts

All scripts are located in the [scripts](scripts) folder and described [here](docs/scripts.md).

## Build

### Versioning

For example, you can use this approach:

Given the version number MAJOR.MINOR.PATCH, the following should be incremented:

* MAJOR version, based on the last number of release year 2021 -> 1, 2022 -> 2, 2023 -> 3, ...
* MINOR version, month of release -> 1, 2, 3 ... 12
* PATCH version, the day on which the release is made -> 1, 2, 3, ... 31

Build number or versionCode, which comes after +, is added following this rule — combine all the values of the application version and add a place for version counting.

```bash
3.11.29+31129000 // first build for the date November 29, 2023

3.11.29+31129001 // second build for the date November 29, 2023

4.01.03+30103001 // second build for the date January 3, 2024
```

### Flavors

The project has two flavors: `dev` and `prod`. The `dev` flavor is used by default.

The guide to adding flavors can be found [here](docs/flavors.md).

### Build Guides

Empty...

### App Signature, Certs and Secrets

Android Application Signature guide can be found [here](docs/sign_app_rules_android.md).

iOS certs and profiles should be saved here: `ios/certs`. But don't store them in the project repository!

## Problems and Possible Solutions

## Architecture and Project Structure

### Navigation

Navigation is centered around the [AutoRoute](https://pub.dev/packages/auto_route) package.

We use a class called AppRouter for global navigation around an app and StackRouter for nested navigation.

### DI

[Provider](https://pub.dev/packages/provider) is our choice for DI.

Dependencies are grouped into container entities with an interface describing a set of dependencies supplied. This entity is, in turn, supplied to a functionality with a [DiScope](./lib/features/common/widgets/di_scope/di_scope.dart) widget, which is used as a wrapper for a corresponding functionality.

### Localization

### Theming

### Icons Launcher

### Native Splash Screen

### Additional Useful Practices

# Stac Sample Apps

A monorepo of example Flutter apps built with [Stac](https://pub.dev/packages/stac), demonstrating server-driven UI patterns across real-world use cases.

## What is Stac?

[Stac](https://docs.stac.dev/) is a server-driven UI framework for Flutter. You define screens using the Stac DSL (Dart), build them into JSON, and deploy to Stac Cloud. The app renders UI at runtime, so you can ship UI changes without releasing a new app version.

## Samples

| App                    | Description                                                               |
| ---------------------- | ------------------------------------------------------------------------- |
| [`finstac`](./finstac) | Personal finance app: credit cards, transactions, onboarding, and profile |

## Prerequisites

* Flutter SDK `^3.10.7`
* Stac CLI (install from [docs.stac.dev](https://docs.stac.dev/cli))

## Running a Sample

Each sample is an independent Flutter project. Navigate into the sample directory and follow its README for full setup instructions.

> **Note:** Each sample is wired to a private Stac Cloud project. Run `stac init` inside the sample directory to connect it to your own project before building or deploying.

```bash
cd finstac

stac init        # connect to your own Stac project
flutter pub get
stac build       # compile DSL screens to JSON
stac deploy      # push screens to Stac Cloud
flutter run
```

## Repository Structure

```
stac-samples/
└── finstac/        # Finance app sample
    ├── lib/        # Flutter app entry point
    ├── stac/       # Stac DSL screens and themes
    └── assets/     # Images, SVGs, fonts
```

## Resources

* [Stac Documentation](https://docs.stac.dev)
* [stac on pub.dev](https://pub.dev/packages/stac)

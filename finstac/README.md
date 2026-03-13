# Finstac

A server-driven UI demo app built with [Stac](https://pub.dev/packages/stac) — showcasing a modern personal finance experience with screens driven entirely from the Stac DSL.

## Overview

Finstac demonstrates how to build a full-featured Flutter app using Stac's server-driven UI framework. All screens are defined as Stac DSL files and rendered at runtime, enabling dynamic UI updates without app releases.

## Screens

| Screen | Route |
|---|---|
| Get Started | `get_started` |
| Login | `loginScreen` |
| Basic Details | `basicDetailsScreen` |
| Address | `addressScreen` |
| Tax ID | `taxScreen` |
| Home | `homeScreen` |
| Profile | `profile_screen` |

## Tech Stack

- **Flutter** `^3.10.7`
- **Stac** `^1.4.0` — server-driven UI runtime
- **Stac Core** `^1.3.0` — DSL widget primitives
- **Figtree** — custom variable font

## Getting Started

### Prerequisites

- Flutter SDK `^3.10.7`
- Stac CLI installed — see [Stac docs](https://docs.buildwithstac.com)

### 1. Connect to your Stac project

This sample is linked to a private Stac Cloud project. You'll need to initialise it against your own project before building or deploying.

```bash
cd finstac
stac init
```

Follow the prompts to sign in and select (or create) your Stac project. This will update the local Stac configuration to point at your project.

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Build Stac screens

```bash
stac build
```

### 4. Deploy screens

```bash
stac deploy
```

### 5. Run the app

```bash
flutter run
```

## Project Structure

```
finstac/
├── lib/
│   └── main.dart           # App entry point
├── stac/
│   ├── app/
│   │   ├── auth/           # Get started & login screens
│   │   ├── onboarding/     # Basic details, address, tax screens
│   │   ├── home/           # Home & profile screens
│   │   └── widgets/        # Shared widget helpers
│   └── theme/              # Light & dark theme definitions
└── assets/                 # Images, SVGs, fonts
```

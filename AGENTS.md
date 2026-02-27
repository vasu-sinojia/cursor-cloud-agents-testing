# AGENTS.md

## Cursor Cloud specific instructions

This is a Flutter counter demo app (single app, not a monorepo).

### Prerequisites

- **Flutter SDK** (≥3.10.0 stable) installed at `/opt/flutter` and on `PATH`.
- **Chrome** is pre-installed and used as the web target (`flutter run -d chrome` or `-d web-server`).

### Key commands

| Action | Command |
|--------|---------|
| Install deps | `flutter pub get` |
| Lint / analyze | `flutter analyze` |
| Run tests | `flutter test` |
| Run app (web, dev) | `flutter run -d web-server --web-port=8080` |
| Build web | `flutter build web` |

### Non-obvious notes

- The project uses **Dart 3.10+ enum shorthand syntax** (e.g., `.fromSeed(...)`, `.center`) in `lib/main.dart`. This is valid Dart and not a bug.
- Android and Linux desktop toolchains are **not** installed; use the **web** target (`-d chrome` or `-d web-server`) for development and testing.
- `flutter run -d web-server --web-port=8080` starts a headless dev server suitable for this environment; open `http://localhost:8080` in Chrome to interact with the app.

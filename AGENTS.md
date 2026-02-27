## Cursor Cloud specific instructions

This is a Flutter desktop/mobile app (`cursor_cloud_agents_testing`). Dart SDK `^3.10.0`.

### Services

| Service | How to run |
|---|---|
| Flutter app (Linux desktop) | `flutter run -d linux` (or build with `flutter build linux`, binary at `build/linux/x64/release/bundle/cursor_cloud_agents_testing`) |

### Key commands

- **Lint**: `flutter analyze`
- **Tests**: `flutter test`
- **Deps**: `flutter pub get`
- **Build**: `flutter build linux`

### Gotchas

- The Flutter SDK is installed at `/opt/flutter` and added to `PATH` via `~/.bashrc`. If the shell doesn't pick it up, run `export PATH="/opt/flutter/bin:$PATH"`.
- Linux desktop build requires a `libstdc++.so` symlink: `sudo ln -sf /usr/lib/gcc/x86_64-linux-gnu/13/libstdc++.so /usr/lib/x86_64-linux-gnu/libstdc++.so`. The `g++-14` package also resolves this.
- The widget test (`test/widget_test.dart`) is a pre-existing counter smoke test that does **not** match the current login screen UI — it will fail. This is a known repo issue, not an environment problem.
- To run the built app headlessly, use `DISPLAY=:1` (Xvfb is typically available on the VM).

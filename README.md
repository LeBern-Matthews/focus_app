# Focus App

A Windows desktop application inspired by the Windows Clock focus mode, built with Flutter. This app helps users maintain productivity through focused work sessions with customizable break periods.

## Features

- 🎯 Focused work sessions with customizable durations
- 🔕 Automatic notification management during focus periods
- ⚡ Quick start focus sessions
- 🌓 Dark/Light theme support
- 💻 Windows-native look and feel
- 📊 Session statistics and tracking
- ⏰ Customizable break periods for longer sessions
- 🖥️ Responsive design that adapts to window size

## Requirements

- Windows 10 or later
- [Flutter](https://flutter.dev/docs/get-started/install) (stable channel)
- [Visual Studio](https://visualstudio.microsoft.com/) with Desktop development with C++ workload
- [Windows 10 SDK](https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/focus_app.git
```

2. Navigate to the project directory:
```bash
cd focus_app
```

3. Get dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run -d windows
```

## Building for Release

To create a release build:

```bash
flutter build windows
```

The built application will be available in `build/windows/runner/Release/`.

## Project Structure

```
lib/
├── components/         # Reusable UI components
├── pages/             # App screens
├── themes/            # Theme configuration
└── main.dart          # App entry point
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Acknowledgments

- Inspired by Windows Clock focus mode
- Built with Flutter
- Uses Provider for state management


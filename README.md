# Taskly 📝

A beautiful and simple Flutter to-do list app with local storage capabilities. Built with modern Flutter practices and optimized for both mobile and web deployment.

## Features ✨

- ✅ **Add Tasks** - Create new tasks with timestamps
- ✅ **Mark Complete** - Toggle task completion status
- ✅ **Persistent Storage** - Tasks saved locally using Hive database
- ✅ **Clean UI** - Simple, intuitive interface with Material Design
- ✅ **Cross Platform** - Works on mobile, web, and desktop
- ✅ **Phone Dimensions** - Optimized 360x640 display for consistent experience

## Screenshots 📱

<img width="579" height="864" alt="image" src="https://github.com/user-attachments/assets/dc36bac9-e00b-4acc-b2f8-139e2de6c43a" />


## Tech Stack 🛠️

- **Framework**: Flutter 3.7+
- **Database**: Hive (Local NoSQL database)
- **State Management**: Built-in Flutter state management
- **UI**: Material Design components

## Project Structure 📁

```
lib/
├── main.dart           # App entry point and configuration
├── models/
│   └── task.dart       # Task data model
└── pages/
    └── home_page.dart  # Main UI page
```

## Installation & Setup 🚀

### Prerequisites
- Flutter SDK (3.7.2 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Clone and Run
```bash
# Clone the repository
git clone <your-repo-url>
cd taskly

# Get dependencies
flutter pub get

# Run the app
flutter run
```

### For Web Development
```bash
# Enable web support
flutter config --enable-web

# Run on web
flutter run -d chrome
```

## Dependencies 📦

```yaml
dependencies:
  flutter:
    sdk: flutter
  hive_flutter: ^1.1.0  # Local database
  cupertino_icons: ^1.0.2
```

## Data Model 📋

The app uses a simple `Task` model:

```dart
class Task {
  String content;      // Task description
  DateTime timestamp;  // Creation time
  bool done;          // Completion status
}
```

## Web Deployment 🌐

This app is optimized for web deployment with fixed phone dimensions (360x640px) for a consistent mobile-like experience across all devices.

### Deploy to Vercel
```bash
# Build for web
flutter build web --release

# Deploy the build/web folder to your preferred hosting service
```

### Recommended Vercel Settings
- **Build Command**: `flutter pub get && flutter build web --release`
- **Output Directory**: `build/web`
- **Install Command**: `git clone https://github.com/flutter/flutter.git && flutter/bin/flutter config --enable-web`

## Features in Detail 🔍

### Local Storage
- Uses Hive database for fast, lightweight local storage
- No internet connection required
- Data persists between app sessions

### Responsive Design
- Fixed 360x640 dimensions for consistent mobile experience
- Phone-like container with shadows and rounded corners
- Centered layout on larger screens

### Performance
- Lightweight and fast
- Minimal dependencies
- Optimized for both development and production builds

## Development Notes 💡

### Hot Reload
The app fully supports Flutter's hot reload for fast development iterations.

### Adding New Features
- Task model is in `models/task.dart`
- Main UI logic is in `pages/home_page.dart`
- App configuration is in `main.dart`

### Hive Database
- Database is initialized in `main.dart`
- Box name: "hive_boxes"
- Tasks are stored as Maps and converted using `toMap()` and `fromMap()` methods

## Contributing 🤝

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License 📄

This project is open source and available under the [MIT License](LICENSE).

## Author 👨‍💻

Built with ❤️ using Flutter

---

**Happy Task Managing!** 🎉

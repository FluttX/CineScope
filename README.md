# CineScope
A modern IMDb clone built with Flutter and BloC state management to explore movies and TV shows effortlessly.

---

## Table of Contents
1. [Features](#features)
2. [Tech Stack](#tech-stack)
3. [Getting Started](#getting-started)
4. [Project Structure](#project-structure)
5. [API Integration](#api-integration)
6. [Screenshots](#screenshots)
7. [Contributing](#contributing)
8. [License](#license)

---

## Features
- Browse popular, top-rated, and upcoming movies.
- Search for movies and TV shows by title.
- View detailed information including trailers, cast, and crew.
- User authentication for adding favorite movies and writing reviews.
- Elegant and responsive UI with Material Design principles.

---

## Tech Stack

### Frontend
- **Flutter**: Cross-platform UI toolkit for building natively compiled applications.

### Backend
- **Backend API**: [The Movie Database (TMDb) API](https://www.themoviedb.org/documentation/api)

### State Management
- **flutter_bloc**: Implements the BLoC (Business Logic Component) pattern for predictable state management.

### Dependency Injection
- **get_it**: Service locator for managing dependencies.
- **injectable**: Code generation for DI setup and easier integration with `get_it`.

### Navigation
- **go_router**: Declarative routing library for handling dynamic navigation.

### Networking
- **http**: Lightweight library for HTTP requests.
- **dio**: Advanced networking library for handling REST APIs and interceptors.
- **retrofit**: Type-safe HTTP client generator based on Dio.

### Storage
- **hive**: Lightweight key-value storage for Flutter apps.
- **hive_flutter**: Hive extension for Flutter with adapters.

### Code Generation
- **build_runner**: Code generator utility for Dart.
- **injectable_generator**: Generates boilerplate code for dependency injection.
- **retrofit_generator**: Generates REST API clients from annotated classes.
- **json_serializable**: Generates boilerplate for JSON serialization/deserialization.
- **hive_generator**: Generates type adapters for Hive storage.

### Localization
- **cine_scope_localization**: Custom package for managing app localization.

### Utilities
- **equatable**: Simplifies equality comparisons for Dart objects.
- **logging**: Provides structured logging functionality for debugging.


---

## Getting Started

### Prerequisites
- Install Flutter SDK [Flutter Install Guide](https://flutter.dev/docs/get-started/install).
- TMDb API Key: Sign up for a developer account on [TMDb](https://www.themoviedb.org/).

### Installation
1. Clone the repository:
   ```bash  
   git clone https://github.com/yourusername/cinescope.git  
   cd cinescope  
   ```
2. Install dependencies:
    ```bash
    flutter pub get  
    ```
3. Add your TMDb API Key in `lib/constants/api_constants.dart`:
    ```dart
    const String tmdbApiKey = "YOUR_API_KEY";  
    ```
4. Run the app:
    ```bash
    flutter run 
    ``` 
   
### Project Structure
    
    lib/  
    ├── blocs/               # BloC implementations for state management  
    ├── models/              # Movie, TV show, and other data models  
    ├── repositories/        # API integration logic  
    ├── screens/             # All screens (home, details, search, etc.)  
    ├── widgets/             # Reusable widgets  
    ├── constants/           # API keys, URLs, and app-wide constants  
    ├── utils/               # Helpers and utilities (e.g., network checks)  
    └── main.dart            # App entry point

### API Integration
This project uses the TMDb API to fetch movie and TV show data. Here are the key endpoints used:

- Popular Movies: `/movie/popular`
- Search: `/search/movie`
- Movie Details: `/movie/{movie_id}`

For full API documentation, visit [TMDb API Docs](https://developer.themoviedb.org/docs/getting-started)

### Screenshots
On Development...

### Contributing
Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch:
    ```bash
    git checkout -b feature-name  
    ```
3. Commit your changes:
    ```bash
    git commit -m "Added new feature"
    ```  
4. Push the branch:
    ```bash
    git push origin feature-name  
    ```
5. Submit a pull request.

### License
This project is licensed under the MIT [License]() - see the LICENSE file for details.





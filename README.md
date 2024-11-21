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
- **Frontend**: Flutter
- **State Management**: BloC (Business Logic Component)
- **Backend API**: [The Movie Database (TMDb) API](https://www.themoviedb.org/documentation/api)
- **Networking**: Dio or Http package
- **Local Storage**: Shared Preferences or Hive

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
    ```plaintext
    lib/  
    ├── blocs/               # BloC implementations for state management  
    ├── models/              # Movie, TV show, and other data models  
    ├── repositories/        # API integration logic  
    ├── screens/             # All screens (home, details, search, etc.)  
    ├── widgets/             # Reusable widgets  
    ├── constants/           # API keys, URLs, and app-wide constants  
    ├── utils/               # Helpers and utilities (e.g., network checks)  
    └── main.dart            # App entry point  
    ```

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





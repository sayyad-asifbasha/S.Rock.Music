# Music Services Module

A Flutter implementation of the Music Services home screen with Firebase integration, following MVVM architecture.

## 📱 Demo Video

https://github.com/yourusername/rock_music/assets/your-asset-id/screen-recording.mp4

*Note: Replace the above URL with your actual GitHub video URL after uploading the screen recording to your repository.*

## Project Structure

```
lib/
├── constants/     # App-wide constants and theme configurations
├── enums/        # Service types and state enums
├── model/        # Service model class for Firestore data
├── repository/   # Service repository for Firestore operations
├── services/     # Firebase service implementation
├── view/         # UI screens (Home and Service Detail)
├── view_model/   # Service view model for state management
├── widgets/      # Reusable components (ServiceCard)
├── firebase_options.dart  # Firebase configuration
├── locator.dart  # Dependency injection setup
├── main.dart     # App entry point
└── router.dart   # Navigation routes
```

## Implementation Details

### 1. Architecture (MVVM)
- **View Layer**: 
  - `HomeScreen`: Main screen displaying service cards
  - `ServiceDetailScreen`: Shows tapped service details
  - `ServiceCard`: Reusable card widget

- **ViewModel Layer**:
  - `ServiceViewModel`: Manages service data and state
  - Uses Provider for state management
  - Handles Firestore data fetching

- **Repository Layer**:
  - `ServiceRepository`: Abstracts Firestore operations
  - Handles data fetching and caching

### 2. Firebase Integration
- Firestore collection structure:
  ```json
  services: {
    title: String,
    description: String,
    iconPath: String
  }
  ```
- Real-time data updates
- Error handling for network issues

### 3. Features
- Responsive UI matching Figma design
- Dynamic service card loading
- Navigation to detail screen
- Clean architecture implementation
- State management with Provider
- Dependency injection with GetIt

## Setup Instructions

1. Clone the repository
2. Run `flutter pub get`
3. Configure Firebase:
   - Add your `google-services.json` (Android)
   - Add `GoogleService-Info.plist` (iOS)
4. Run `flutter run`

## Dependencies
- `provider`: State management
- `get_it`: Dependency injection
- `cloud_firestore`: Firebase integration
- `firebase_core`: Firebase initialization


## Assignment Requirements Met
- ✅ Responsive UI implementation
- ✅ Firebase Firestore integration
- ✅ MVVM architecture
- ✅ Provider state management
- ✅ Navigation implementation
- ✅ Dependency injection (bonus)

## 📝 How to Add Your Demo Video

1. Record your screen using any screen recording tool (e.g., Windows Game Bar, OBS, or QuickTime)
2. Save the video file (preferably in MP4 format)
3. Go to your GitHub repository
4. Click on "Issues"
5. Click on "New Issue"
6. Drag and drop your video file into the issue
7. Copy the generated video URL
8. Replace the video URL in this README with your actual video URL

*Note: Make sure your video demonstrates:*
- App launch
- Service cards display
- Navigation to detail screen
- Firebase data loading
- Overall UI responsiveness

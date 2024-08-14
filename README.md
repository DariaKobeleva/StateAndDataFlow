# StateAndDataFlowApp

StateAndDataFlowApp is a SwiftUI application that demonstrates the use of state management and data flow between different UI components. 
The app implements basic user authentication, name validation, and a timer.

## Demo
<img src="https://github.com/user-attachments/assets/8c513f3d-c6f1-4f65-b3e0-f781bd1a74bd" width="200"/>

## Functionality

### Core Features
- **User Authentication:** The user enters their name, which is saved using `AppStorage`, and gains access to the main content after successful login.
- **Name Validation:** When entering the user's name, a validation check ensures the name is at least 3 characters long. The "OK" button is only enabled when this condition is met.
- **Timer:** The user can start and reset a timer that counts down from 3 seconds. The timer uses `Timer` to update the state regularly.

### State Management
- Using `@StateObject` and `@EnvironmentObject` to pass data and manage state between different components of the application.
- `AppStorage` is used to persist user data, such as name and login status, in local storage.
- Real-time validation of the entered name with corresponding visual feedback.

## What I Learned
- State management in SwiftUI using `@StateObject` and `@EnvironmentObject`.
- Saving and loading data using `AppStorage` and `UserDefaults`.
- Creating and using custom views (e.g., the custom button `ButtonView`).
- Managing a timer and handling asynchronous tasks using `Timer`.
- Implementing input validation (e.g., ensuring the name meets a minimum length requirement).
- Structuring an application with a clear separation between view layers and view models.

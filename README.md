# Attendance Demo App

A Flutter-based attendance tracking system designed for employees. It allows users to record attendance via a camera-based punch-in system, view attendance reports, and access helpdesk features — all in a modern mobile UI.

---

## Features

- 👤 **Employee Login View**
  - Personalized greeting with employee name and code (e.g., Sambhavi, Emp Code: 0001)
  - Drawer menu with navigation: Selfie Punch, Reports, Helpdesk, Logout

- 📸 **Camera-Based Attendance (Selfie Punch)**
  - "Punch In" and "Punch Out" buttons with camera access
  - Uses Google's ML Kit for barcode detection (e.g., employee badges)

- 📊 **Attendance Analytics Dashboard**
  - Live stats for: Present, Absent, Late, Week Off, Working Days
  - Visual donut chart for quick status overview

- 📅 **Selfie Report History**
  - View previously submitted punches with timestamps and status (Approved, Pending, Rejected)
  - Date-range picker for filtering records

- 🧭 **Bottom Navigation Bar**
  - Navigate between Home, Camera, and Profile sections easily

- 💡 **Modern Flutter UI**
  - Clean layout using Material Design
  - Iconography and smooth navigation
  - Mobile-optimized design

---

## Getting Started

### Prerequisites

- Flutter SDK ([Install Guide](https://flutter.dev/docs/get-started/install))
- Android Studio / VS Code with Flutter & Dart plugins
- A device or emulator with a working camera

### Installation Steps

```bash
git clone https://github.com/yourusername/attendence_demo.git
cd attendence_demo
flutter pub get
flutter run

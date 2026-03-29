# FreshTrack

## Project Title
FreshTrack – Basic Food Expiration Tracker (Flutter App)

## Research Problem
Food waste is a common issue in households due to users forgetting or losing track of expiration dates. Many people store groceries without a proper system to monitor when items expire, which leads to unnecessary waste and financial loss.

## Motivation
The purpose of this project is to build a simple tool that helps users visually track food items and their expiration status. Even in its early stage, the project aims to reduce forgetfulness by presenting expiration information in a clear and structured way.

## Control Flow
- The application starts from the Home Page.
- The Home Page displays the app title and a navigation button.
- When the user clicks the button, they are redirected to the List Page.
- The List Page displays a hardcoded list of food items.
- Each item contains:
  - Product name
  - Days remaining until expiration (hardcoded values)
  - Status indicator color (green, orange, red)
- The color is determined using basic logic based on the number of days left.

## Implementation Strategy
- Built using Flutter (Dart).
- Application is structured into multiple pages:
  - `main.dart` → entry point and routing
  - `homepg.dart` → home screen with navigation button
  - `list.dart` → list display screen
- Data is currently hardcoded inside the list screen.
- Each item includes:
  - Name
  - Days left
- UI logic applies conditional rules to assign status colors based on expiration range.
- Navigation is handled using basic Flutter routing between screens.


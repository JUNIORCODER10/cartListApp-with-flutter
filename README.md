# Cart List App

This Flutter application is a simple Todo List that allows users to manage their tasks. It utilizes Provider for state management and implements routing using the `go_router` package.

## Project Structure

The project consists of several Dart files:

### `main.dart`

This file contains the main entry point of the application. It sets up the app's theme, initializes the Provider for state management, and configures the router for navigation.

### `cart.dart`

The `CartModel` class defines the cart's functionality. It manages items in the cart, including adding and removing items.

### `catalog.dart`

The `CatalogModel` class represents the catalog of items available in the app. It provides methods to retrieve items by ID or position in the catalog.

### `login.dart`

This file contains the login screen (`MyLogin`) used for user authentication. Users can enter their username and password to access the app.

### `theme.dart`

The `appTheme` variable defines the theme used throughout the application. It includes custom styles for text and color schemes.

### Screens:

- **Cart Screen** (`MyCart`): Displays the items added to the cart. Users can view the items, remove them, and see the total price.
- **Catalog Screen** (`MyCatalog`): Shows a list of available items in the catalog. Users can view the items and add them to the cart.
- **Login Screen** (`MyLogin`): Allows users to log in by entering their username and password.

## Usage

To run this Flutter project:

1. Ensure you have Flutter installed on your machine.

2. Clone this repository.

3. Open the project in your preferred Flutter IDE or editor.

4. Run the app on an emulator or physical device.

## Dependencies

This project uses the following dependencies:
- `flutter/material.dart`: Core Flutter framework.
- `provider.dart`: For state management.
- `go_router.dart`: For routing and navigation.

## Contributions

Contributions to improve the app's functionality, fix bugs, or enhance its design are welcome. Feel free to create pull requests or open issues for suggestions or improvements.

## License

This project is licensed under the [BSD 3-Clause License](LICENSE).

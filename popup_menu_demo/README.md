## PopupMenuButton Widget Demo

A Flutter demo showing how to use the PopupMenuButton widget to display a menu of selectable options and handle user interactions dynamically.

The PopupMenuButton acts like an interactive overflow menu. Without it, adding contextual actions (like Edit, Delete, or Share) for items in your UI would require custom buttons and extra code.

## The Resulting UI

PopupMenuButton Code Example

This code creates a simple interactive menu that updates the selected item and shows a SnackBar message when a user makes a selection.

## Run Instructions

Clone this repository:

git clone <https://github.com/BirasaDivine/Flutter-Projects>

## Navigate into the project folder:

cd popup_menu_demo

## Install dependencies:

flutter pub get

## Run the app:

flutter run

## Key PopupMenuButton Attributes

This demo showcases three important attributes of the PopupMenuButton widget:

icon: Icon(Icons.more_vert) – Changes the default trigger button icon for the menu.

onSelected: (SampleItem item) {...} – Handles actions when a user selects a menu item, such as updating the UI and showing feedback with a SnackBar.

itemBuilder – Defines the menu items that appear when the user taps the button.

## Real-World Use Cases

App bars: For overflow menus with global app actions.

Cards or lists: For item-specific actions like edit, delete, or share.

Profile or settings pages: For user-related options.

## Source

This demo is adapted from the official Flutter documentation:
PopupMenuButton class – Flutter Docs

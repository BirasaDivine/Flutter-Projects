import 'package:flutter/material.dart';

/// PopupMenuButton demo using an enum and updating state on selection.

enum SampleItem { itemOne, itemTwo, itemThree }

void main() => runApp(const PopupMenuApp());

class PopupMenuApp extends StatelessWidget {
  const PopupMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenuButton Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const PopupMenuExample(),
    );
  }
}

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  // State field to store which item is selected
  SampleItem? selectedMenu;

  // Helper method to convert enum value to readable text
  String _labelFor(SampleItem? item) {
    switch (item) {
      case SampleItem.itemOne:
        return 'Item 1';
      case SampleItem.itemTwo:
        return 'Item 2';
      case SampleItem.itemThree:
        return 'Item 3';
      default:
        return 'None';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PopupMenuButton Demo')),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Text section
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Choose an item:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Selected: ${_labelFor(selectedMenu)}'),
                  ],
                ),
                const SizedBox(width: 20),

                // PopupMenuButton section
                PopupMenuButton<SampleItem>(
                  icon: const Icon(Icons.more_vert),
                  // When a menu item is selected, update state & show message
                  onSelected: (SampleItem item) {
                    setState(() => selectedMenu = item);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Selected ${_labelFor(item)}')),
                    );
                  },
                  // Build the list of menu items
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<SampleItem>>[
                        const PopupMenuItem(
                          value: SampleItem.itemOne,
                          child: Text('Item 1'),
                        ),
                        const PopupMenuItem(
                          value: SampleItem.itemTwo,
                          child: Text('Item 2'),
                        ),
                        const PopupMenuItem(
                          value: SampleItem.itemThree,
                          child: Text('Item 3'),
                        ),
                      ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 243, 255, 68),
        textTheme: TextTheme(
         
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of items in the dropdown menu
  List<String> dropdownItems = ['-Rakesh Yadav', '-Akhilesh Yadav', '-Rammilan Yadav', '-Mira Yadav'];

  // The value selected from the dropdown
  String? selectedItem;

  @override
  void initState() {
    super.initState();
    // Set initial selected item
    selectedItem = dropdownItems[0]; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dropdown Selector'),
        centerTitle: true, // Center the AppBar title
        elevation: 5, // Adds shadow effect to AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFFF24A08).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color.fromARGB(255, 68, 255, 112), width: 2),
            ),
            child: DropdownButton<String>(
              value: selectedItem,
              isExpanded: true, // Ensures the dropdown button takes up full width
              icon: Icon(Icons.arrow_drop_down, color: Colors.blueAccent),
              iconSize: 30,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 21, 21, 21),
              ),
              underline: SizedBox(), // Removes default underline
              items: dropdownItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      item,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

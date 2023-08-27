import 'package:flutter/material.dart';

class ShowData extends StatelessWidget {
  final List<Map<String, String>> data = [
    {'name': 'Nakib', 'phoneNumber': '01627199815', 'comment': 'Nice work'},
    {'name': 'Hana', 'phoneNumber': '01636984848', 'comment': 'Great job'},
    // Add more data items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show Data",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        iconTheme: IconThemeData(color: Colors.blue), // Change the color of the back icon
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Phone Number')),
            DataColumn(label: Text('Comment')),
          ],
          rows: data.map((item) {
            return DataRow(cells: [
              DataCell(Text(item['name']!)),
              DataCell(Text(item['phoneNumber']!)),
              DataCell(Text(item['comment']!)),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}

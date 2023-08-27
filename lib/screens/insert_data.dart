import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/comment provider.dart';


class InsertData extends StatefulWidget {
  @override
  _InsertDataState createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  final _nameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Insert Data",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.blue),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            SizedBox(height: 8),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text("Phone Number"),
            SizedBox(height: 8),
            TextField(
              controller: _phoneNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text("Comment"),
            SizedBox(height: 8),
            TextField(
              controller: _commentController,
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){

                    //add new comment
                    addComment(
                        comment : Comment(
                          name: _nameController.text,
                          phoneNumber: _phoneNumberController.text,
                          comment: _commentController.text,
                        ),
                    );

                    // Clear the text fields after successful insertion
                    _nameController.clear();
                    _phoneNumberController.clear();
                    _commentController.clear();
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

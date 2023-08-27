import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Comment class
class Comment {
   String? name;
   String? phoneNumber;
   String? comment;

  Comment({
    required this.name,
    required this.phoneNumber,
    required this.comment,
  });

  factory Comment.fromMap(Map<String, dynamic> json) => Comment(
    name: json["name"],
    phoneNumber: json["phoneNumber"],
    comment: json["comment"],
  );

  // Map comment data
  Map<String, dynamic> toMap() => {
      'name': name,
      'phoneNumber': phoneNumber,
      'comment': comment,
  };

}


class CommentProvider with ChangeNotifier {
 List<Comment> comments = [];

}

// Connect with Firebase Database
Future<void> addComment({required Comment comment}) async {
  const url =
      "https://insert-read-update-database-default-rtdb.asia-southeast1.firebasedatabase.app/comments.json";

  final response = await http.post(
    Uri.parse(url),
    body: jsonEncode(comment.toMap()),
  );
  // Handle response as needed
}
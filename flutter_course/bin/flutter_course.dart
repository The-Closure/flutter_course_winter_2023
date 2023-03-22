// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';

import 'package:flutter_course/flutter_course.dart';

void main() async {
  Dio dio = Dio();

  Response result =
      await dio.get('http://jsonplaceholder.typicode.com/posts/1');

  Model data = Model.fromMap(result.data);

  print(data.userId);
  print(data.id);

  print(data.title);
  print(data.body);
}

class Model {
  int userId;
  int id;
  String title;
  String body;
  Model({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Model copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return Model(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Model.fromJson(String source) =>
      Model.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Model(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(covariant Model other) {
    if (identical(this, other)) return true;

    return other.userId == userId &&
        other.id == id &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;
  }
}

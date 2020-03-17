import 'package:cloud_firestore/cloud_firestore.dart';

class Person {
  String id;
  String name;
  String email;
  String password;

  Person({this.email, this.id, this.name, this.password});

  Map<String, String> personToMap() {
    return {
      'name': this.name,
      'id': this.id,
      'password': this.password,
      'email': this.email,
    };
  }

  factory Person.fromDoc(DocumentSnapshot snapshot) {
    return Person(
      name: snapshot.data['name'],
      email: snapshot.data['email'],
      id: snapshot.data['id'],
      password: snapshot.data['password'],
    );
  }

  String get getId => id;

  set setId(String id) => this.id = id;

  String get getName => name;

  set setName(String name) => this.name = name;

  String get getEmail => email;

  set setEmail(String email) => this.email = email;

  String get getPassword => password;

  set setPassword(String password) => this.password = password;
}

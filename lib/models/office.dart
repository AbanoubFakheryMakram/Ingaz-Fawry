import 'package:cloud_firestore/cloud_firestore.dart';

class Office {
  String id;
  String name;
  String email;
  String password;
  List<String> personalFiles;
  String field;

  Office({
    this.id,
    this.name,
    this.email,
    this.password,
    this.field,
    this.personalFiles,
  });

  factory Office.fromDoc(DocumentSnapshot snapshot) {
    return Office(
      name: snapshot.data['name'],
      email: snapshot.data['email'],
      id: snapshot.data['id'],
      password: snapshot.data['password'],
      field: snapshot.data['field'],
      personalFiles: snapshot.data['personalFiles'],
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

  List get getPersonalFiles => personalFiles;

  set setPersonalFiles(List personalFiles) =>
      this.personalFiles = personalFiles;

  String get getField => field;

  set setField(String field) => this.field = field;
}

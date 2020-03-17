import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ingaz_fawry/models/office.dart';
import 'package:ingaz_fawry/models/person.dart';

/*
  TRUE  >>  OPERATION DONE
  FALSE >>  OPERATION FAILED
 */

class FirebaseUtils {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final Firestore _firestore = Firestore.instance;

  static Future<bool> createEmailAndPasswordAccount({
    email,
    password,
  }) async {
    try {
      AuthResult operationResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      FirebaseUser theNewUser = operationResult.user;
      if (theNewUser != null) {
        await theNewUser.sendEmailVerification();
        print('>>>>>>>>>>>.. account created');
        return true;
      } else {
        return false;
      }
    } catch (error) {
      print('error creating account >>>>>> ${error.toString()}');
      return false;
    }
  }

  static Future<bool> sendUserEmailVerification() async {
    await _auth.currentUser().then(
      (user) {
        user.sendEmailVerification();
      },
    );

    return true;
  }

  static Future<String> downloadImageURL(StorageReference storage) async {
    return await storage.getDownloadURL();
  }

  // method to save data in a collection
  static saveData({
    @required String collectionName,
    @required Map<String, dynamic> dataInMap,
    @required id,
  }) async {
    await _firestore
        .collection('$collectionName') // set the collection name
        .document(id)
        .setData(dataInMap);
    print('>>>>>>>>>>>>>>>>> data saved');
  }

  // method to login existing user
  static Future<bool> loginUser({email, password}) async {
    try {
      AuthResult operationResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      FirebaseUser logedInUser = operationResult.user;
      if (logedInUser != null) {
        // successfully logged in this mean this account is exist
        print('successfully loged in');
        return true;
      } else {
        // this account not exist
        print('failed to login');
        return false;
      }
    } catch (error) {
      print('error login using this account >>>>>> ${error.toString()}');
      return false;
    }
  }

  // method to logged out
  static void logout() async {
    await _auth.signOut();
    print('logged out');
  }

  // method to check if email is exist or not
  static Future<bool> emailIsExist({email}) async {
    List<String> list = await _auth.fetchSignInMethodsForEmail(email: email);

    if (list.isEmpty) {
      // this email is not exist
      print('this email is not exist');
      return false;
    } else {
      // this email is exit
      print('this email is exist');
      return true;
    }
  }

  // method to send user reset email password
  static Future<bool> sendUserResetEmailPassword({email}) async {
    try {
      _auth.sendPasswordResetEmail(
        email: email,
      );
      print('reset password link is sent');
      return true;
    } catch (error) {
      print(
          'error sending user email reset password >>>>>> ${error.toString()}');
      return false;
    }
  }

  // method to check if email is verified or not
  static Future<bool> isEmailVerified({email}) async {
    FirebaseUser user = await _auth.currentUser();
    if (user != null) {
      // this mean this user is exist
      print('email is exist');
      print('statrt checking if email is verifed or not');
      // now check is his email is verified or not
      if (user.isEmailVerified) {
        print('email is verifid');
        return true;
      } else {
        print('email is not verified yet');
        return false;
      }
    } else {
      print('this email is not exist');
      return false;
    }
  }

  // method to delete user account
  static Future<bool> deleteAccount() async {
    try {
      FirebaseUser user = await _auth.currentUser();
      user.delete();
      print('successfully deleted user account');
      return true;
    } catch (error) {
      print('can not delete this account');
      return false;
    }
  }

  // method to get last sign in time
  static Future<DateTime> getLastSignInTime() async {
    FirebaseUser user = await _auth.currentUser();
    return user.metadata.lastSignInTime;
  }

  // method to update user email
  static Future<bool> updateEmail({newEmail}) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await user.updateEmail(newEmail);
      return true;
    } catch (error) {
      print('can not update email >> ${error.toString()}');
      return false;
    }
  }

  // method to update user password
  static Future<bool> updatePassword({newPassword}) async {
    try {
      FirebaseUser user = await _auth.currentUser();
      await user.updatePassword(newPassword);
      return true;
    } catch (error) {
      print('can not password email >> ${error.toString()}');
      return false;
    }
  }

  // method to get current user
  static Future<FirebaseUser> getCurrentUser() async {
    return await _auth.currentUser();
  }

  // get person data
  static Future<Person> getPersonData({
    @required String collectionName,
    @required String userId,
  }) async {
    try {
      DocumentSnapshot snapshot = await _firestore
          .collection(collectionName)
          .document(userId)
          .get(); // will return a DocumentSnapshot object
      return Person.fromDoc(snapshot);
    } catch (error) {
      print('>>>>>> ${error.toString()}');
      return null;
    }
  }

  // get office data
  static Future<Office> getOfficeData({
    @required String collectionName,
    @required String userId,
  }) async {
    try {
      DocumentSnapshot snapshot = await _firestore
          .collection(collectionName)
          .document(userId)
          .get(); // will return a DocumentSnapshot object
      return Office.fromDoc(snapshot);
    } catch (error) {
      print('>>>>>> ${error.toString()}');
      return null;
    }
  }
}

// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<List<dynamic>> querybookings(DocumentReference? userRef) async {
  final firestore = FirebaseFirestore.instance;
  List<dynamic> bookings = [];

  if (userRef == null) {
    print('Invalid user reference');
    return bookings;
  }

  try {
    // Reference to the 'booking' subcollection in the provided user reference
    final bookingsRef = userRef.collection('booking');

    // Query the 'booking' subcollection
    final querySnapshot = await bookingsRef.get();

    // Process the query results and add each document's data to the bookings list
    for (var doc in querySnapshot.docs) {
      bookings.add(doc.data());
    }
  } catch (e) {
    print('Error querying bookings: $e');
  }

  return bookings;
}

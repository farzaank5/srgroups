import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String> getUniqueVillas(List<String> list) {
  return list.toSet().toList();
}

List<VillasRecord> getPlaces(
  List<VillasRecord> list,
  List<VillasRecord> searchResults,
  bool searchBool,
  bool booking,
) {
  return searchBool ? searchResults : list;
}

int? calculateBasePrice(
  int pricePerNight,
  DateTime startDate,
  DateTime endDate,
) {
  return endDate.difference(startDate).inDays * pricePerNight;
}

List<String> getBookingList(
  List<BookingsRecord> bookingList,
  DateTime startDate,
  DateTime endDate,
) {
  List<String> bookings = [];

  for (var booking in bookingList) {
    if ((startDate.isBefore(booking.endDate!) ||
                startDate.isAtSameMomentAs(booking.endDate!)) &&
            (endDate.isAfter(booking.startDate!)) ||
        endDate.isAtSameMomentAs(booking.startDate!)) {
      bookings.add(booking.placeStringRef);
    }
  }

  return bookings;
}

double getEmployeeEarning(
  double calculatedBasePrice,
  double employeePer,
) {
  return employeePer * calculatedBasePrice / 100;
}

double? getProfit(
  double totalPrice,
  double employeeEarning,
) {
  return totalPrice - employeeEarning;
}

double? getMonthlyEarnings(
  List<DateTime> bookTime,
  List<double> earnings,
) {
  // a function to current month earning of a hotel booking with the the help of its booktime
  final now = DateTime.now();
  final currentMonthBookings = <double>[];
  for (int i = 0; i < bookTime.length; i++) {
    if (bookTime[i].month == now.month && bookTime[i].year == now.year) {
      currentMonthBookings.add(earnings[i]);
    }
  }

  // Then, we can sum up the earnings for the current month
  double monthlyEarnings = 0;
  for (final earning in currentMonthBookings) {
    monthlyEarnings += earning;
  }

  return monthlyEarnings;
}

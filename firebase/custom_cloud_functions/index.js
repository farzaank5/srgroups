const admin = require("firebase-admin/app");
admin.initializeApp();

const employeeBookingAnalytics = require("./employee_booking_analytics.js");
exports.employeeBookingAnalytics =
  employeeBookingAnalytics.employeeBookingAnalytics;

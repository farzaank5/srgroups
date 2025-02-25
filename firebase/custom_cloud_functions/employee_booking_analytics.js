const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code

exports.employeeBookingAnalytics = functions
  .region("asia-northeast1")
  .https.onCall(async (data, context) => {
    const userReference = data.userReference; // Assuming 'userReference' is passed correctly

    console.log(`userReference: ${userReference}`); // Log the parameter

    try {
      const userBookingsRef = admin
        .firestore()
        .collection("users")
        .doc(userReference)
        .collection("bookings");
      const bookingsSnapshot = await userBookingsRef.get();

      console.log("bookingsSnapshot size:", bookingsSnapshot.size); // Log the size of the snapshot

      if (bookingsSnapshot.empty) {
        console.log("No bookings found for this user."); // Log if no bookings found
        return { message: "No bookings found for this user." };
      }

      let bookings = [];
      bookingsSnapshot.forEach((doc) => {
        bookings.push({ id: doc.id, ...doc.data() });
      });

      console.log("Fetched bookings:", bookings); // Log the fetched bookings

      return { bookings: bookings };
    } catch (error) {
      console.error("Error fetching bookings:", error); // Log the error
      throw new functions.https.HttpsError(
        "internal",
        "Unable to fetch bookings",
      );
    }
  });

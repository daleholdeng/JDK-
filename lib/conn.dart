import 'dart:async';

import 'package:mysql1/mysql1.dart';

class LoginService {
  // MySQL connection settings
  static final ConnectionSettings _settings = ConnectionSettings(
    host: '10.0.2.2',    // Use this for Android emulator
    port: 3306,          // Default MySQL port
    user: 'root',        // MySQL username
    password: '',        // MySQL password
    db: 'timetrackerdb', // Your database name
  );

  // Method to check connection validity
  static Future<bool> validateConnection() async {
    MySqlConnection? conn;

    try {
      // Attempt to connect to the database
      conn = await MySqlConnection.connect(_settings);

      // If connection is successful, return true
      print("Connection to MySQL database successful!");
      return true;
    } catch (e) {
      // Handle connection failure
      print("Error connecting to MySQL database: $e");
      return false;
    } finally {
      // Ensure the connection is closed
      if (conn != null) {
        await conn.close();
      }
    }
  }
  static Future<bool> loginBtn(String email, String password) async {
    MySqlConnection? conn;

    try {
      // Establish connection
      conn = await MySqlConnection.connect(_settings);

      // Query to find the user with the given email and password
      var results = await conn.query(
        'SELECT * FROM users WHERE email = ? AND password = ? LIMIT 1',
        [email, password],
      );

      // Check if user exists
      if (results.isNotEmpty) {
        // Simulate storing user data in a global variable
        var user = results.first.fields; // Access row fields as a map
        UserData.loggedInUser = user;    // Replace `UserData` with your actual global user handler
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print('Error during login: $e');
      return false;
    } finally {
      // Ensure the connection is closed
      if (conn != null) {
        await conn.close();
      }
    }
  }
}


  // Login method


class UserData {
  static Map<String, dynamic>? loggedInUser;
}
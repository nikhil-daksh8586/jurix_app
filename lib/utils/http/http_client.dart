

import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseurl = 'https://your-api-base-url.com'; // Replace with your base URL

  // Helper methods for making GET requests

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseurl$endpoint'));
    return _handleResponse(response);
  }

  // Helper methods for making POST requests
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseurl$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // Helper mathod to make a Put request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse('_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data));
    return _handleResponse(response);

  }

  // Helper method to make a DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseurl/$endpoint'));
    return _handleResponse(response);
  }

  // Handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
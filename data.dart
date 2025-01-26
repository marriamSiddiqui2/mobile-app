import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = "http://127.0.0.1:8000/"; // Use your backend URL

class AuthService {
  Future<Map<String, dynamic>> login(String username, String password) async {
    final url = Uri.parse("${baseUrl}api/token/");
    
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        // Check if user is admin (staff)
        final userDetailsResponse = await http.get(
          Uri.parse("${baseUrl}api/user/details/"),
          headers: {
            'Authorization': 'Bearer ${responseData['access']}',
          },
        );
        
        if (userDetailsResponse.statusCode == 200) {
          final userDetails = json.decode(userDetailsResponse.body);
          responseData['is_admin'] = userDetails['is_staff'] ?? false;
        }
        
        return responseData;
      } else {
        throw Exception('Login failed: ${response.body}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<Map<String, dynamic>> register(String username, String password, String email) async {
    final url = Uri.parse("${baseUrl}api/user/register/");
    
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': username,
          'password': password,
          'email': email,
        }),
      );

      if (response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception('Registration failed: ${response.body}');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
}

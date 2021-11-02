
class Client {
  final String email;
  final String token;
  final String? photoUrl;

  Client({required this.email, required this.token, this.photoUrl});

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
        email: json['email'], token: json['token'], photoUrl: json['photoUrl']);
  }
}

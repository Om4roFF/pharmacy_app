import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pharmacy_app/services/http_service.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Dio _dio = HttpService.dio;

  Future<String> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      await _auth.signInWithCredential(credential);
      final response = await _dio.post(
        '/users/auth/google',
        options: Options(
          headers: {
            'user_id': googleSignInAccount.id,
          },
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      print(response);
      if(response.statusCode == 200){
        return response.data;
      }
      throw Exception('Error login with google');
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return '';
    } catch(_){
      print(_.toString());
      return '';
    }
  }



  Future<String> signInWithFacebook() async {
    final facebook = FacebookAuth.instance;
    var facebookAuth = await facebook.login();
    print(facebookAuth.status);
    print(facebookAuth.status);
    print(facebookAuth.accessToken);
    return facebookAuth.message!;
  }


  Future<String> signInWithPassword(String login, String password) async {
    try{
      final response = await _dio.post('/users/auth/', options: Options(
        headers: {
          'login': login,
          'password': password,
        },
        validateStatus: (status) {
          return status! < 500;
        },
        followRedirects: false,
      ),);
      if(response.statusCode == 200){
        return response.data;
      }
      return '';
    }catch(_){
      return '';
    }
  }

  Future<void> signOutGoogle()async{
    await _googleSignIn.signOut();
  }


}

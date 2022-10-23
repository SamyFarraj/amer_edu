import 'package:google_sign_in/google_sign_in.dart';

class GoogleSigInApi
{
  static final _googleSignIn=GoogleSignIn();
  static Future<GoogleSignInAccount?>login()=> _googleSignIn.signIn().then((result){
    result?.authentication.then((googleKey){
      print(googleKey.accessToken);
      print(googleKey.idToken);
      print(_googleSignIn.currentUser?.displayName);
    }).catchError((err){
      print('inner error');
    });
  }).catchError((err){
    print('error occured');
  });
      /*
      _googleSignIn.signIn();

       */
}
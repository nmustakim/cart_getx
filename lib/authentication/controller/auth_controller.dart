import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
class AuthController extends GetxController {
late Rx <User?> _user;
FirebaseAuth auth = FirebaseAuth.instance;

@override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.authStateChanges());
  }


}
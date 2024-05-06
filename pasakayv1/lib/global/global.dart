
import 'package:firebase_auth/firebase_auth.dart';


import '../models/user_model.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
UserModel? currentUser;

UserModel? userModelCurrentInfo;
String userDropOffAddress = "";



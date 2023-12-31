import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flas/screens/welcome_screen.dart';
import 'package:flas/screens/login_screen.dart';
import 'package:flas/screens/registration_screen.dart';
import 'package:flas/screens/chat_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute:  WelcomeScreen.id,
      routes:{
        WelcomeScreen.id : (context)=> WelcomeScreen(),
        RegistrationScreen.id : (context)=> RegistrationScreen() ,
        LoginScreen.id : (context)=> LoginScreen() ,
        ChatScreen.id : (context)=> ChatScreen() ,
    }
    );

  }
}

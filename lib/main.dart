import 'package:flutter/material.dart';
import 'package:uts_login_register/item/data.dart';
import 'package:uts_login_register/item/login.dart';
import 'package:uts_login_register/item/profil.dart';
import 'package:uts_login_register/item/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login/Register Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/profil',
      routes: {
        '/': (context) {
          Data useData = Data(namaUser: 'Dwi Ayu Setiawati', email: 'dwi60522@gmail.com');
          return LoginPage(useData: useData);
        },
        '/register': (context) => RegisterPage(),
        '/profil' : (context) {
          Data useData = Data(namaUser: 'Dwi Ayu Setiawati', email: 'dwi60522@gmail.com');
          return ProfilePage(useData: useData);
        },
        },
    );
  }
}

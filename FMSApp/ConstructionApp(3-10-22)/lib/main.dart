import 'package:construction/app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/screens/loginscreen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );
  runApp(const Initialscreen());
}

class Initialscreen extends StatelessWidget {
  const Initialscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    // GestureDetector(
    //   onTap: () => FocusScope.of(context).unfocus(),
    // );
    return  MaterialApp(
       initialRoute: '/',
    routes: {
      '/': (context) => const LoginScreen(),
      '/home': (context) => const HomePage(),
    },
      title: "Construction",
      debugShowCheckedModeBanner: false,
    );
  }
}

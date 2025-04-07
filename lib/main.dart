import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tymo_app/Controller/UserController/usercontroller.dart';
import 'package:tymo_app/Views/Auth/Register.dart';
import 'package:tymo_app/Views/Widgets/Auth/splash.dart';
import 'package:tymo_app/Views/Widgets/Auth/splash_oader_animation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyDaCG3bqLW-x6hdsWdsYUUCfRdONW5-Q5k",
    projectId: "tymo-48614",
    messagingSenderId: "499471290741",
    appId: "1:499471290741:web:240a4f03f8ae2f1c69833c",
  ));
  runApp(const Tymo());
}

class Tymo extends StatefulWidget {
  const Tymo({super.key});

  @override
  State<Tymo> createState() => _TymoState();
}

class _TymoState extends State<Tymo> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserController())],
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Tymo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Splash(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

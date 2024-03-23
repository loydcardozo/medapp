import 'package:flutter/material.dart';
import 'package:medapp/model/auth_model.dart';
// import 'package:medapp/pages/StartingPage.dart';
// import 'package:medapp/pages/homepage.dart';
import 'package:medapp/pages/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:medapp/pages/loginpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return ChangeNotifierProvider<AuthModel>(
    create: (context) => AuthModel(),
    child: MaterialApp(
       debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // textTheme: TextTheme(
          //   displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          //   bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
          // ),
          iconTheme: IconThemeData(color: Colors.white),
            brightness: Brightness.light,
            appBarTheme: AppBarTheme(
              // color: Colors.blue[700],
              // color: Colors.green[300]
              color: Colors.teal,
            ),
          ),
        // theme: ThemeData(brightness: Brightness.dark),
      home: FutureBuilder<bool>(
       future: shouldShowOnboarding(getInstallationId),
       builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.data == true) {
          return OnboardingScreen();
        } else {
          return LoginPage();
        }
       }
      )
    ),
  );
}
}

Future<bool> shouldShowOnboarding(Function getInstallationId) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String storedInstallationId = prefs.getString('installationId') ?? '';
  String currentInstallationId = await getInstallationId(); 

  if (storedInstallationId.isEmpty || storedInstallationId != currentInstallationId) {
   
    await prefs.setString('installationId', currentInstallationId);
    await prefs.setBool('firstLaunch', true);

    return true;
  } else {
    bool isFirstLaunch = prefs.getBool('firstLaunch') ?? true;
    return isFirstLaunch;
  }
}

Future<String> getInstallationId(BuildContext context) async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Theme.of(context).platform == TargetPlatform.android) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.model;
  } else {
    return '';
  }
}
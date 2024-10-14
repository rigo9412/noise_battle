import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noise_battle/common/router_generator.dart';
import 'package:noise_battle/common/routes.dart';
import 'package:noise_battle/common/theme.dart';
import 'package:noise_battle/provider/game_provider.dart';
import 'package:noise_battle/screen/home_screen/home_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GameProvider()),
        //ChangeNotifierProvider(create: (_) => CartProvider()),
    
      ],
      child: const MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  
  @override
  Widget build(BuildContext context) {
    //final brightness = View.of(context).platformDispatcher.platformBrightness;
    final theme = MaterialTheme(Theme.of(context).textTheme);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: theme.light().scaffoldBackgroundColor,
        systemNavigationBarColor: theme.light().scaffoldBackgroundColor,
      ),
    );
    return MaterialApp(
      title: 'Clap Winner',
      debugShowCheckedModeBanner: false,

      theme:   theme.light(),
       initialRoute: Routes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const HomeScreen(),
    );
  }
}

 
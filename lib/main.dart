import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/view/home/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SideBarNotifier.getInstance),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:turgaydin/view/home/widgets/side_bar.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Sidebar ui',
//       home: Scaffold(
//         body: SidebarPage(),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//               content: Text('Yay! Button Pressed!'),
//             ));
//           },
//           backgroundColor: Colors.green,
//           child: const Icon(Icons.navigation),
//         ),
//       ),
//     );
//   }
// }

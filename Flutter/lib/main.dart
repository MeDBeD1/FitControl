import 'package:fit_control/screens/Pages/profile.dart';
import 'package:fit_control/screens/auth/signup.dart';
import 'screens/Pages/diet.dart';
import 'screens/Pages/home.dart';
import 'screens/Pages/messages.dart';
import 'screens/Pages/training.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const FitControl());
}

class FitControl extends StatelessWidget {
  const FitControl({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitControl',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: const SignUp(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  final  List<Widget> _tabs = [
    UserHome(),
    UserDiet(),
    UserMessages(),
    UserTraining(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 60,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android_outlined),
            label: 'Лента',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_rounded),
            label: 'Питание',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Сообщения',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center_rounded),
            label: 'Тренировки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black12,
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant/constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

// ignore: prefer_const_declarations
final backGdImg =
    'https://images.unsplash.com/photo-1506012787146-f92b2d7d6d96?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=2000&fit=max&ixid=eyJhcHBfaWQiOjExNzczfQ';

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(backGdImg), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 300),
                  Text(
                    'Welcome to AirSpecMove',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Lets go, travel and explore the world.',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontSize: 15, color: Colors.orangeAccent),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 180, 105, 39),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(250, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: defaultSpacing),
              ),
            )
          ],
        ),
      ),
    );
  }
}

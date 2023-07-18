/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';
import 'package:acecomponents/components/components.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('A collection of Components'),
      ),
      body:  Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 15),
          const Text('Form Input', style: TextStyle(fontSize: 24),),
          const SizedBox(height: 15),

          InputText(
            obscureText: false,
            controller: emailController,
            hintText: 'Whai is your name',
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter something';
              }
              return null;
            },
          ),

          const SizedBox(height: 15),

          AceElevatedButton(
            text: "Click Me",
            onPressed:() {},
          )
        ],
      ),
    );
  }
}

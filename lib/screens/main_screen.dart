/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';
import 'package:acecomponents/common/common.dart';
import 'package:acecomponents/constants/constants.dart';
import 'package:acecomponents/components/components.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.charcoal,
        title: const Text('A collection of Components', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 15),
          const Text('Form Input', style: TextStyle(fontSize: 24),),
          const SizedBox(height: 15),

          AceInputText(
            obscureText: false,
            controller: emailController,
            hintText: 'What is your name',
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Please enter something';
              }
              return null;
            },
          ),
          const SizedBox(height: 15),

          AceElevatedButton(
            text: 'Click Me',
            onPressed:() {},
          ),
          const SizedBox(height: 15),

          const LoadingSpinner(spinColor: AppColors.charcoal),

          Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 105,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return const CircularHorizontalList();
                    },
                  ),
                ),
              ),
        ],
      ),
    );
  }
}

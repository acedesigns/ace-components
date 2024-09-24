/* =======================================================
 *
 * Created by anele on 20/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';

class CircularHorizontalList extends StatelessWidget {
  
  const CircularHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: NetworkImage('https://loremflickr.com/cache/resized/65535_53065639115_14eaf016a0_320_240_nofilter.jpg'),
              fit: BoxFit.cover
            ),
          ),
        ),
        const SizedBox(height: 5),
        const Text('Ice Cream', style: TextStyle(color: Colors.black),),
      ],
    );
  }
}
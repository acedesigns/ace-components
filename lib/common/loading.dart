/* =======================================================
 *
 * Created by anele on 18/07/2023.
 *
 * @anele_ace
 *
 * =======================================================
 */

import 'package:flutter/material.dart';

class LoadingSpinner extends StatelessWidget {
  final Color spinColor;

  const LoadingSpinner({
    super.key, 
    required this.spinColor
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: spinColor,
      ),
    );
  }
}


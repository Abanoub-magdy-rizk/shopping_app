import 'package:flutter/material.dart';

void navigateWithFade(BuildContext context, Widget page) {
  Navigator.of(context).pushReplacement(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 600),
      pageBuilder: (_, animation, __) {
        return FadeTransition(opacity: animation, child: page);
      },
    ),
  );
}

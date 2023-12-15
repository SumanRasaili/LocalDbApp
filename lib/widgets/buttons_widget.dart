import 'package:flutter/material.dart';

class DrawerButtons extends StatelessWidget {
  final String name;
  final void Function()? onPressed;
  const DrawerButtons({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            name,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

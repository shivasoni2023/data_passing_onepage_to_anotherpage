import 'package:flutter/material.dart';
class passDataSvreen extends StatelessWidget {

  String name,email,phone;

  passDataSvreen({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Name: $name'),
            Text('Password: $email'),
            Text('Phone: $phone'),
          ],
        ),
      ),
    );
  }
}
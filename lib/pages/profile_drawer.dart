import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/profile_picture.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Isindu',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text(
              'Jayaneththi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}

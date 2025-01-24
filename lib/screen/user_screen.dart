import 'package:fit_app/utils/colors.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final double ht = MediaQuery.of(context).size.height;
    final double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: wt * 0.3,
                      height: ht * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('assets/user_profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: wt * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Robert Downey Jr',
                          style: TextStyle(
                            fontSize: wt * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Engineer',
                          style: TextStyle(
                            fontSize: ht * 0.02,
                            color: CustomColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.email),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.message),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 10),
                const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  softWrap: true,
                  'Robert Downey Jr.is a globally renowned actor and philanthropist'
                  'best known for his charismatic portrayal of Iron Man in the Marvel'
                  'Cinematic Universe.With a career spanning decades, he has earned'
                  'accolades for his versatility, wit, and resilience.Despite facing'
                  'challenges early in his life',
                  style: TextStyle(
                      fontSize: ht * 0.02, color: CustomColors.textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

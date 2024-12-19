import 'package:flutter/material.dart';

import 'package:hackathone_test/DashboardScreen.dart';
import 'package:hackathone_test/TranserToFriend.dart';
import 'package:hackathone_test/Transfertobank.dart';

class Transferscreen extends StatelessWidget {
  const Transferscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: const Color(0xFF662AB2),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageView(),
                        ),
                      );
                    },
                  ),
                  const Text(
                    'Transfer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {
                      // Your right icon action
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TransferToFriend()),
                                    );
                                  },
                                  label: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person_3,
                                        color: Color(0xFF662AB2),
                                      ),
                                      Text(
                                        "Transfer to Friends",
                                        style: TextStyle(
                                            color: Color(0xFF662AB2),
                                            fontSize: 12,
                                            fontFamily: 'Poppins'),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 236, 236, 236),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const TransferToBank()),
                                    );
                                  },
                                  label: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_balance,
                                        color: Color(0xFF662AB2),
                                      ),
                                      Text(
                                        "Transfer to Bank",
                                        style: TextStyle(
                                            color: Color(0xFF662AB2),
                                            fontSize: 12,
                                            fontFamily: 'Poppins'),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 236, 236, 236),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  'List Of Latest Transfer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              custListTile('Owais Ahmed', 'Yesterday 19:12',
                                  'Rp 600.000'),
                              custListTile('Abdullah Bin Shahid',
                                  'Monday 3:46 PM', 'Rp 800.000'),
                              custListTile('Talha Shahid', 'Tuesday 5:59 PM',
                                  'Rp 658.000'),
                              custListTile('Burhan Ali', '10-Dec-2024 4:00 PM',
                                  'Rp 20,000.000'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget custListTile(String text, String subtitle, String trailing) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.grey[200],
      child: const Icon(Icons.list_alt, color: Colors.purple),
    ),
    title: Text(
      text,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(
          fontSize: 10, color: Colors.black54, fontFamily: 'Poppins'),
    ),
    trailing: Text(
      trailing,
      style: const TextStyle(
          fontSize: 12, color: Colors.red, fontFamily: 'Poppins'),
    ),
  );
}

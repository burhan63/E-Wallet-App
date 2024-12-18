import 'package:flutter/material.dart';
import 'package:hackathone_test/CurvedAppBar.dart';
import 'package:hackathone_test/TranserToFriend.dart';
import 'package:hackathone_test/Transfertobank.dart';

class Transferscreen extends StatelessWidget {
  const Transferscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CurvedAppBar(title: "Transfer"),
      body: Padding(
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
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransferToFriend()),
                      );
                    },
                    label: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person_3, color: Colors.white),
                        Text(
                          "Transfer to Friends",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransferToBank()),
                      );
                    },
                    label: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_balance, color: Colors.white),
                        Text(
                          "Transfer to Bank",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'List Of Latest Transfer',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                custListTile('Owais Ahmed', 'Yesterday 19:12', 'Rp 600.000'),
                custListTile(
                    'Abdullah Bin Shahid', 'Monday 3:46 PM', 'Rp 800.000'),
                custListTile('Talha Shahid', 'Tuesday 5:59 PM', 'Rp 658.000'),
                custListTile(
                    'Burhan Ali', '10-Dec-2024 4:00 PM', 'Rp 20,000.000'),
              ],
            ),
          ],
        ),
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
          fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(
          fontSize: 14, color: Colors.black54, fontFamily: 'Poppins'),
    ),
    trailing: Text(
      trailing,
      style: const TextStyle(
          fontSize: 16, color: Colors.red, fontFamily: 'Poppins'),
    ),
  );
}

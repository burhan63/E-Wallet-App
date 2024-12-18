import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathone_test/Contacts.dart'; // For ContactsScreen
import 'package:hackathone_test/Tansctionscreen.dart';
// Import the Transactions Screen

class TransferToFriend extends StatefulWidget {
  const TransferToFriend({super.key});

  @override
  State<TransferToFriend> createState() => _TransferToFriendState();
}

class _TransferToFriendState extends State<TransferToFriend> {
  double balance = 1000.0; // Example balance value
  TextEditingController phoneController =
      TextEditingController(); // Controller for phone number
  TextEditingController amountController =
      TextEditingController(); // Controller for amount

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: Stack(
                    children: [
                      Container(
                        height: 210,
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                      ),
                      // Back and Help icons
                      Positioned(
                        top: 30,
                        left: 20,
                        child: IconButton(
                          icon:
                              const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 20,
                        child: IconButton(
                          icon: const Icon(Icons.help_outline,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      // Title
                      const Positioned(
                        top: 30,
                        left: 20,
                        right: 20,
                        child: Text(
                          'Transfer to Friend',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Positioned(
                        bottom: 70,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Balance',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins'),
                            ),
                            Text(
                              'Rp 24,321.900', // Display balance
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // Phone number input field
                      TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Input Phone Number',
                          hintText: 'Input number',
                          // Border with only bottom border
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.phone, color: Colors.purple),
                            onPressed: () async {
                              // Navigate to ContactsScreen and get the selected phone number
                              String? selectedPhone = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ContactsScreen(),
                                ),
                              );
                              // If a phone number was selected, update the text field
                              if (selectedPhone != null) {
                                phoneController.text = selectedPhone;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Set Amount',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: const InputDecoration(
                          labelText: 'Rp',
                          hintText: 'Enter Rp',
                          // No border
                          border: InputBorder.none,
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 00,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Transaction screen with the phone number and amount
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Transctionscreen(
                      phoneNumber: phoneController.text,
                      amount: amountController.text,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Proceed to Transfer',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

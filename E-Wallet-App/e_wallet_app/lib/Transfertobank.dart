import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathone_test/BanksList.dart';
// For ContactsScreen
import 'package:hackathone_test/Tansctionscreen.dart';
// Import the Transactions Screen

class TransferToBank extends StatefulWidget {
  const TransferToBank({super.key});

  @override
  State<TransferToBank> createState() => _TransferToBankState();
}

class _TransferToBankState extends State<TransferToBank> {
  double balance = 1000.0;
  TextEditingController phoneController = TextEditingController();
  TextEditingController amountController = TextEditingController();

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
                          'Transfer to Bank',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
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
                              ),
                            ),
                            Text(
                              'Rp 24,321.900', // Display balance
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
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
                      TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Input Bank Account Number',
                          hintText: 'Input number',
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.account_balance,
                                color: Colors.purple),
                            onPressed: () async {
                              String? selectedPhone = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BankScreen(),
                                ),
                              );

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
                        ),
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
                'Proceed to Pay',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

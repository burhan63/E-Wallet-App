import 'package:flutter/material.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({super.key});

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  final List<Map<String, String>> banks = [
    {'name': 'Bank of America', 'code': 'BANK1234'},
    {'name': 'Chase', 'code': 'BANK5678'},
    {'name': 'Wells Fargo', 'code': 'BANK9101'},
    {'name': 'Citibank', 'code': 'BANK1121'},
    {'name': 'HSBC', 'code': 'BANK3141'},
  ];

  TextEditingController accountNumberController = TextEditingController();

  void showBankDialog(BuildContext context, String bankName) {
    accountNumberController.clear(); // Clear the input field
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Bank: $bankName'),
          content: TextField(
            controller: accountNumberController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Enter Account Number',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog without saving
              },
              child: const Text(
                'Cancel',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    accountNumberController.text); // Return account number
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
          ],
        );
      },
    ).then((value) {
      if (value != null && value.isNotEmpty) {
        Navigator.pop(
            context, value); // Return to TransferToBank with account number
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Bank',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: banks.length,
        itemBuilder: (context, index) {
          final bank = banks[index];
          return ListTile(
            leading: const Icon(Icons.account_balance),
            title: Text(
              bank['name']!,
              style: const TextStyle(fontFamily: 'Poppins'),
            ),
            subtitle: Text(
              'Code: ${bank['code']}',
              style: const TextStyle(fontFamily: 'Poppins'),
            ),
            onTap: () {
              showBankDialog(context, bank['name']!);
            },
          );
        },
      ),
    );
  }
}

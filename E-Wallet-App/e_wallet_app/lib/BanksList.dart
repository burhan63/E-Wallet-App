import 'package:flutter/material.dart';
import 'package:hackathone_test/CurvedAppBar.dart';
import 'package:hackathone_test/Transfertobank.dart';

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

  void showBankBottomSheet(BuildContext context, String bankName) {
    accountNumberController.clear(); // Clear the input field
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bank: $bankName',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: accountNumberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter Account Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(
                          context); // Close the bottom sheet without saving
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, {
                        'bankName': bankName,
                        'accountNumber': accountNumberController.text
                      }); // Return bank name and account number
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ).then((value) {
      if (value != null && value['accountNumber']?.isNotEmpty == true) {
        Navigator.pop(
          context,
          value, // Return the selected bank details with account number
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: const CurvedAppBar(title: 'Transfer To Bank'),
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(100), // Set your desired height here
        child: AppBar(
          backgroundColor: const Color(0xFF662AB2),
          title: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Transfer to Bank',
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TransferToBank(),
                ),
              );
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: const Color(0xFF662AB2),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: ListView.builder(
                  itemCount: banks.length,
                  itemBuilder: (context, index) {
                    final bank = banks[index];
                    return ListTile(
                      leading: const Icon(Icons.account_balance),
                      title: Text(bank['name']!),
                      subtitle: Text('Code: ${bank['code']}'),
                      onTap: () {
                        showBankBottomSheet(context, bank['name']!);
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

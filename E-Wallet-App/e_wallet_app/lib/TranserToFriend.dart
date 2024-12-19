import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathone_test/Contacts.dart'; // For ContactsScreen
import 'package:hackathone_test/Tansctionscreen.dart';
import 'package:hackathone_test/TranserOptions.dart';

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
  TextEditingController notesController =
      TextEditingController(); // Notes Controller
  bool isContactSelected = false;
  bool isProceedEnabled = false; // To manage button state

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      setState(() {
        isProceedEnabled = amountController.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: const Color(0xFF662AB2),
            child: Stack(
              children: [
                // Back button
                Positioned(
                  top: 30,
                  left: 20,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Transferscreen()),
                      );
                      print(Navigator.of(context).canPop());
                    },
                  ),
                ),
                // Help Icon
                Positioned(
                  top: 30,
                  right: 20,
                  child: IconButton(
                    icon: const Icon(Icons.help_outline, color: Colors.white),
                    onPressed: () {
                      // Help action
                    },
                  ),
                ),
                // Title
                const Positioned(
                  top: 34,
                  left: 20,
                  right: 20,
                  child: Text(
                    'Transfer to Friend',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Balance Info and Top-up Button
                Positioned(
                  bottom: 60,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Balance Info
                      const Column(
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
                            'Rp 24,321.900',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.wallet,
                                color: Color(0xFF662AB2),
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Top-up',
                                style: TextStyle(
                                  color: Color(0xFF662AB2),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.only(
                            bottom: 20, left: 20, right: 20, top: 60),
                        child: Column(
                          children: [
                            TextField(
                              controller: phoneController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Input Phone Number',
                                hintText: 'Input number',
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF662AB2),
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    FontAwesomeIcons.addressBook,
                                    color: Color(0xFF662AB2),
                                  ),
                                  onPressed: () async {
                                    Map<String, dynamic>? selectedContact =
                                        await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ContactsScreen(),
                                      ),
                                    );

                                    if (selectedContact != null) {
                                      setState(() {
                                        phoneController.text =
                                            '${selectedContact['name']} (${selectedContact['phone']})';
                                        isContactSelected = true;
                                      });
                                    }
                                  },
                                ),
                              ),
                              enabled: !isContactSelected,
                            ),

                            isContactSelected
                                ? Text(
                                    phoneController.text,
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.purple),
                                  )
                                : Container(),

                            const SizedBox(height: 20),
                            const Text(
                              'Set Amount',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: amountController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    decoration: const InputDecoration(
                                      hintText: 'RP0',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            // Notes input field
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Notes (optional)',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                TextField(
                                  controller: notesController,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: 'Add a note',
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      left: 20,
                      right: 20,
                      child: ElevatedButton(
                        onPressed: isProceedEnabled
                            ? () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Transctionscreen(
                                      phoneNumber: phoneController.text,
                                      amount: amountController.text,
                                    ),
                                  ),
                                );
                              }
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF662AB2),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

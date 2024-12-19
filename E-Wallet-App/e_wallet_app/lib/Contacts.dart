import 'package:flutter/material.dart';
import 'package:hackathone_test/TranserToFriend.dart';

import 'dart:math';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final List<String> names = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Eva',
    'Frank',
    'Grace',
    'Hannah',
    'Ivy',
    'Jack',
    'Kathy',
    'Liam',
    'Mona',
    'Nathan',
    'Olivia',
    'Paul',
    'Quincy',
    'Rita',
    'Sam',
    'Tina',
    'Uma',
    'Vera',
    'Will',
    'Xander',
    'Yara',
    'Zane'
  ];

  List<Map<String, dynamic>> contacts = [];
  List<Map<String, dynamic>> filteredContacts = [];
  TextEditingController searchController = TextEditingController();

  void _generateContacts() {
    Random random = Random();
    setState(() {
      contacts = List.generate(
        50,
        (index) {
          String name = names[random.nextInt(names.length)];
          String phoneNumber = '0${random.nextInt(1000000000) + 3000000000}';
          String imageInitials = name.substring(0, 1).toUpperCase();
          return {
            'name': name,
            'phone': phoneNumber,
            'image': imageInitials,
          };
        },
      );
      filteredContacts = List.from(contacts);
    });
  }

  @override
  void initState() {
    super.initState();
    _generateContacts();
    searchController.addListener(() {
      filterContacts(searchController.text);
    });
  }

  void filterContacts(String query) {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
              contact['name'].toLowerCase().contains(query.toLowerCase()) ||
              contact['phone'].contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(100), // Set your desired height here
        child: AppBar(
          backgroundColor: const Color(0xFF662AB2),
          title: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'Transfer to Friend',
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
                  builder: (context) => const TransferToFriend(),
                ),
              );
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFF662AB2),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                              labelText: 'Search Contacts',
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(20), // Rounded border
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 231, 231,
                                231), // Background color for the button
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xFF662AB2),
                            ),
                            onPressed: () {
                              // Add your action for the '+' button
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListView.builder(
                itemCount: filteredContacts.length,
                itemBuilder: (context, index) {
                  var contact = filteredContacts[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(contact['image']),
                    ),
                    title: Text(contact['name']),
                    subtitle: Text(contact['phone']),
                    onTap: () {
                      Navigator.pop(context, contact);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:math';

// import 'package:hackathone_test/CurvedAppBar.dart';

// class ContactsScreen extends StatefulWidget {
//   const ContactsScreen({super.key});

//   @override
//   _ContactsScreenState createState() => _ContactsScreenState();
// }

// class _ContactsScreenState extends State<ContactsScreen> {
//   final List<String> names = [
//     'Alice',
//     'Bob',
//     'Charlie',
//     'David',
//     'Eva',
//     'Frank',
//     'Grace',
//     'Hannah',
//     'Ivy',
//     'Jack',
//     'Kathy',
//     'Liam',
//     'Mona',
//     'Nathan',
//     'Olivia',
//     'Paul',
//     'Quincy',
//     'Rita',
//     'Sam',
//     'Tina',
//     'Uma',
//     'Vera',
//     'Will',
//     'Xander',
//     'Yara',
//     'Zane'
//   ];

//   List<Map<String, dynamic>> contacts = [];
//   List<Map<String, dynamic>> filteredContacts = [];
//   TextEditingController searchController = TextEditingController();

//   void _generateContacts() {
//     Random random = Random();
//     setState(() {
//       contacts = List.generate(
//         50,
//         (index) {
//           String name = names[random.nextInt(names.length)];
//           String phoneNumber = '0${random.nextInt(1000000000) + 3000000000}';
//           String imageInitials = name.substring(0, 1).toUpperCase();
//           return {
//             'name': name,
//             'phone': phoneNumber,
//             'image': imageInitials,
//           };
//         },
//       );
//       filteredContacts = List.from(contacts);
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _generateContacts();
//     searchController.addListener(() {
//       filterContacts(searchController.text);
//     });
//   }

//   void filterContacts(String query) {
//     setState(() {
//       filteredContacts = contacts
//           .where((contact) =>
//               contact['name'].toLowerCase().contains(query.toLowerCase()) ||
//               contact['phone'].contains(query))
//           .toList();
//     });
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appBar: const CurvedAppBar(title: 'Contacts'),
//       body: Column(
//         children: [
//            Container(
//             width: double.infinity,
//             height: 150,
//             color: const Color(0xFF662AB2),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 TextField(
//                   controller: searchController,
//                   decoration: const InputDecoration(
//                     labelText: 'Search Contacts',
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: filteredContacts.length,
//                     itemBuilder: (context, index) {
//                       var contact = filteredContacts[index];
//                       return ListTile(
//                         leading: CircleAvatar(
//                           child: Text(contact['image']),
//                         ),
//                         title: Text(contact['name']),
//                         subtitle: Text(contact['phone']),
//                         onTap: () {
//                           Navigator.pop(context, contact);
//                         },
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

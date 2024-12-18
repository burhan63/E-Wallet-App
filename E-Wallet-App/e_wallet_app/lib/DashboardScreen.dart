import 'package:flutter/material.dart';
import 'package:hackathone_test/TranserOptions.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
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
                  Positioned(
                    top: 30,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.wallet,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'EasyWallet',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.yellow,
                                size: screenWidth * 0.05,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                '1.972 Points',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        const Text(
                          'Your Balance',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Rs. 24,321,900',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            const Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 175,
                    left: 15,
                    right: 15,
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          QuickAction(
                            icon: Icons.swap_horiz,
                            label: 'Transfer',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Transferscreen()),
                              );
                            },
                          ),
                          QuickAction(
                              icon: Icons.account_balance_wallet,
                              label: 'Pop Up',
                              onTap: () {}),
                          QuickAction(
                              icon: Icons.money,
                              label: 'Withdraw',
                              onTap: () {}),
                          QuickAction(
                              icon: Icons.more_horiz,
                              label: 'More',
                              onTap: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0),
                                    ),
                                  ),
                                  builder: (context) {
                                    return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.75,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(60),
                                          topRight: Radius.circular(60),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(
                                                top: 25, left: 10, right: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Main Menu',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  'Edit Menu',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, right: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustCircularAvatar1(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 242, 232, 253),
                                                  icon: Icons.swap_horiz,
                                                  iconSize: 25,
                                                  label: 'Transfer',
                                                  textStyle: const TextStyle(
                                                      fontFamily: 'Poppins'),
                                                ),
                                                CustCircularAvatar1(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 242, 232, 253),
                                                  icon: Icons.attach_money,
                                                  iconSize: 25,
                                                  label: 'Pop Up',
                                                  textStyle: const TextStyle(
                                                      fontFamily: 'Poppins'),
                                                ),
                                                CustCircularAvatar1(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 242, 232, 253),
                                                  icon: Icons.money_off,
                                                  iconSize: 25,
                                                  label: 'Withdraw',
                                                  textStyle: const TextStyle(
                                                      fontFamily: 'Poppins'),
                                                ),
                                                CustCircularAvatar1(
                                                  radius: 25,
                                                  backgroundColor:
                                                      const Color.fromARGB(
                                                          255, 242, 232, 253),
                                                  icon: Icons.arrow_downward,
                                                  iconSize: 25,
                                                  label: 'Request',
                                                  textStyle: const TextStyle(
                                                      fontFamily: 'Poppins'),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Payment List',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.phone_android,
                                                      iconSize: 25,
                                                      label: 'Pulsa & Data',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.electric_bolt,
                                                      iconSize: 25,
                                                      label: 'Electricity',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon:
                                                          Icons.local_activity,
                                                      iconSize: 25,
                                                      label: 'Online Ticket',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.school,
                                                      iconSize: 25,
                                                      label: 'Education',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons
                                                          .health_and_safety_rounded,
                                                      iconSize: 25,
                                                      label: 'Insurance',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.trending_up,
                                                      iconSize: 25,
                                                      label: 'Invest',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.wifi,
                                                      iconSize: 25,
                                                      label:
                                                          'Internet\nTV Cable',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon:
                                                          Icons.videogame_asset,
                                                      iconSize: 25,
                                                      label: 'Games\nVouchers',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 15, right: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.attach_money,
                                                      iconSize: 25,
                                                      label: 'E-Money',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons.water_drop,
                                                      iconSize: 25,
                                                      label: 'Water',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon: Icons
                                                          .shopping_bag_outlined,
                                                      iconSize: 25,
                                                      label: 'E-Commerce',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                    CustCircularAvatar1(
                                                      radius: 25,
                                                      backgroundColor:
                                                          const Color.fromARGB(
                                                              255,
                                                              242,
                                                              232,
                                                              253),
                                                      icon:
                                                          Icons.stream_outlined,
                                                      iconSize: 25,
                                                      label: 'Streaming',
                                                      textStyle:
                                                          const TextStyle(
                                                              fontFamily:
                                                                  'Poppins'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Send Again',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                addNewAvatar(25.0, 'Add New'),
                customCircularAvatar(
                    const AssetImage('assets/images/Status7.jpeg'),
                    25,
                    'Owais'),
                customCircularAvatar(
                    const AssetImage('assets/images/Status2.jpeg'),
                    25,
                    'Abdullah'),
                customCircularAvatar(
                    const AssetImage('assets/images/Status3.jpeg'),
                    25,
                    'Burhan'),
                customCircularAvatar(
                    const AssetImage('assets/images/Status4.jpeg'),
                    25,
                    'Talha'),
                customCircularAvatar(
                    const AssetImage('assets/images/Status5.jpeg'),
                    25,
                    'Kashif'),
              ],
            ),
            const SizedBox(height: 18),
            // Latest Transactions Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Transactions',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return custListTile(
                  transaction['title']!,
                  transaction['subtitle']!,
                  transaction['amount']!,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ballot_rounded,
                color: Colors.grey,
              ),
              label: 'Report'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.purple,
              ),
              label: 'QR Code'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
                color: Colors.grey,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }

  final List<Map<String, String>> transactions = [
    {
      'title': 'Transfer',
      'subtitle': 'Yesterday at 19:12',
      'amount': '-Rs 600,000'
    },
    {'title': 'Top Up', 'subtitle': 'May 29, 2023', 'amount': '+Rs 260,000'},
    {
      'title': 'Transfer',
      'subtitle': 'Yesterday at 19:12',
      'amount': '-Rs 600,000'
    },
    {
      'title': 'Withdraw',
      'subtitle': 'Yesterday at 19:12',
      'amount': '-Rs 300,000'
    },
    {
      'title': 'Transfer',
      'subtitle': 'Yesterday at 19:12',
      'amount': '-Rs 400,000'
    },
  ];
}

class QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const QuickAction({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

Widget customCircularAvatar(
    ImageProvider backgroundImage, double radius, String text) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: backgroundImage,
        radius: radius,
      ),
      const SizedBox(height: 5),
      Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
    ],
  );
}

Widget addNewAvatar(double radius, String text) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.grey,
        radius: radius,
        child: Icon(
          Icons.add,
          color: Colors.purple,
          size: radius,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
    ],
  );
}

Widget custListTile(String text, String subtitle, String trailing) {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.grey[200],
      child: const Icon(Icons.send, color: Colors.purple),
    ),
    title: Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(fontSize: 14, color: Colors.black54),
    ),
    trailing: Text(
      trailing,
      style: const TextStyle(fontSize: 16, color: Colors.red),
    ),
  );
}

Widget CustCircularAvatar1({
  required double radius,
  required Color backgroundColor,
  required IconData icon,
  required String label,
  Color iconColor = const Color(0xFF662AB2),
  double iconSize = 30,
  TextStyle? textStyle,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
      const SizedBox(height: 5),
      Text(
        label,
        style: textStyle ??
            const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

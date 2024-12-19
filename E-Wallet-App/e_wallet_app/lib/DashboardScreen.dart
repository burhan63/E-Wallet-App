import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathone_test/TranserOptions.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  ClipPath(
                    clipper: CustomClipperPath(),
                    child: Container(
                      height: 210,
                      color: const Color(0xFF662AB2),
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
                            icon: (Icons.swap_horiz),
                            color: const Color(0xFF662AB2),
                            iconcolor: Colors.white,
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
                              icon: FontAwesomeIcons.wallet,
                              color: Colors.white,
                              iconcolor: const Color(0xFF662AB2),
                              label: 'Pop Up',
                              onTap: () {}),
                          QuickAction1(
                            imagePath: 'assets/images/withdraw.png',
                            color: Colors.white,
                            imageSize: 30,
                            label: 'Withdraw',
                            onTap: () {},
                          ),
                          QuickAction(
                              icon: Icons.more_horiz,
                              color: const Color(0xFF662AB2),
                              iconcolor: Colors.white,
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
                                                    left: 05, right: 15),
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30),
                                                      child:
                                                          CustCircularAvatar1(
                                                        radius: 25,
                                                        backgroundColor:
                                                            const Color
                                                                .fromARGB(255,
                                                                242, 232, 253),
                                                        icon: Icons.water_drop,
                                                        iconSize: 25,
                                                        label: 'Water',
                                                        textStyle:
                                                            const TextStyle(
                                                                fontFamily:
                                                                    'Poppins'),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child:
                                                          CustCircularAvatar1(
                                                        radius: 25,
                                                        backgroundColor:
                                                            const Color
                                                                .fromARGB(255,
                                                                242, 232, 253),
                                                        icon: Icons
                                                            .shopping_bag_outlined,
                                                        iconSize: 25,
                                                        label: 'E-Commerce',
                                                        textStyle:
                                                            const TextStyle(
                                                                fontFamily:
                                                                    'Poppins'),
                                                      ),
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
              child: SingleChildScrollView(
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
        selectedItemColor: const Color(0xFF662AB2),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: _currentIndex == 0
                    ? const Color(0xFF662AB2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.swap_horiz,
                color: _currentIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: _currentIndex == 1
                    ? const Color(0xFF662AB2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                FontAwesomeIcons.fileLines,
                color: _currentIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF662AB2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.qr_code_scanner,
                size: 36,
                color: Colors.white,
              ),
            ),
            label: 'QR Code',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: _currentIndex == 3
                    ? const Color(0xFF662AB2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.history,
                color: _currentIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                color: _currentIndex == 4
                    ? const Color(0xFF662AB2)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                Icons.person,
                color: _currentIndex == 4 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'Profile',
          ),
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
  final Color color;
  final Color iconcolor;
  final VoidCallback onTap;

  const QuickAction(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      required this.color,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                icon,
                color: iconcolor,
              )),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class QuickAction1 extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color color;
  final VoidCallback onTap;
  final double imageSize;

  const QuickAction1({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onTap,
    required this.color,
    this.imageSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50),
            ),
            child: ClipOval(
              child: Image.asset(
                imagePath, // Local image path
                fit: BoxFit.cover,
                width: imageSize,
                height: imageSize,
              ),
            ),
          ),
          const SizedBox(height: 2),
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
      child: const Icon(
        Icons.swap_horiz,
        color: Color(0xFF662AB2),
      ),
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

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start at the bottom left corner
    path.lineTo(0, size.height);

    // First curve
    path.quadraticBezierTo(
      size.width / 4, // Control point to shape the curve
      size.height - 30, // Control point below the bottom to make curve upwards
      size.width / 2, // End point of the curve (middle of the container)
      size.height, // Ending at the bottom center
    );

    // Second curve
    path.quadraticBezierTo(
      size.width * 3 / 4, // Control point to shape the curve
      size.height - 30, // Control point below the bottom to make curve upwards
      size.width, // Ending at the right corner
      size.height, // Ending at the bottom right corner
    );

    // Go to top right corner
    path.lineTo(size.width, 0);

    // Go back to top left corner
    path.lineTo(0, 0);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

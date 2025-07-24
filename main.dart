import 'package:flutter/material.dart';
import 'package:multi_circular_slider/multi_circular_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Attendence Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    DrawerDemo(
      title: "",
    ),
    CameraSelfie(),
    ProfileBio(),
  ];

  void _onItemTapped(int index) {
    (index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfileBio extends StatelessWidget {
  const ProfileBio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              //height: 40,
              //width: 80,
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  Text(
                    "Edit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 170,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 110,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color.fromRGBO(4, 85, 214, 1),
                    ),
                  ),
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 63,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/image1.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("Sambhavi Suresh",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Emp Code: IH23721",
                    style: TextStyle(
                      color: Color.fromRGBO(120, 120, 120, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Text("Employee Details",
                      style: TextStyle(
                        color: Color.fromRGBO(37, 37, 37, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text("Email Address",
                      style: TextStyle(
                        color: Color.fromRGBO(131, 131, 131, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("madarauchiha98@gmail.com",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text("Mobile Number",
                      style: TextStyle(
                        color: Color.fromRGBO(131, 131, 131, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("+91 9845276121",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text("Company",
                      style: TextStyle(
                        color: Color.fromRGBO(131, 131, 131, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("InfinityHub",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  child: Text("Address",
                      style: TextStyle(
                        color: Color.fromRGBO(131, 131, 131, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                      "Lorem ipsum dolorsitamet,consectetuadipiscin sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,",
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CameraSelfie extends StatelessWidget {
  const CameraSelfie({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Text(
          "My Selfie",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 149.59,
                    height: 49.92,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(4, 85, 214, 1), width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "12 Jan 2023",
                            style:
                                TextStyle(color: Color.fromRGBO(4, 85, 214, 1)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.event_note,
                              color: Color.fromRGBO(4, 85, 214, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Text(
                  "To",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    width: 149.59,
                    height: 49.92,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DD MM YYYY",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.event_note,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            DefaultTabController(
              length: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    Container(
                      // margin:const EdgeInsets.all(5),
                      width: 345,
                      height: 43.97,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.circular(5)),
                        labelColor: Colors.green[600],
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: const [
                          Tab(
                            text: 'Approved',
                          ),
                          Tab(
                            text: 'Pending',
                          ),
                          Tab(
                            text: 'Rejected',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: [
                          ApprovedContext(),
                          Center(
                            child: Text("No Record Found"),
                          ),
                          Center(child: Text("No Record Found")),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ApprovedContext extends StatelessWidget {
  const ApprovedContext({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 345,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10, right: 5),
                          child: CircleAvatar(
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("assets/images/image1.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Sambhavi Suresh",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 3),
                          child: Text("30 Jan 2023 | 13:00",
                              style: TextStyle(
                                  color: Color.fromRGBO(4, 85, 214, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color.fromRGBO(4, 85, 214, 1),
                            ),
                            Flexible(
                              child: Text(
                                "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore,magna aliqua. Ut enim ad minim veniam,",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 345,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10, right: 5),
                          child: CircleAvatar(
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("assets/images/image1.png"),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Sambhavi Suresh",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 3),
                          child: Text("30 Jan 2023 | 09:45",
                              style: TextStyle(
                                  color: Color.fromRGBO(4, 85, 214, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color.fromRGBO(4, 85, 214, 1),
                            ),
                            Flexible(
                              child: Text(
                                "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore,magna aliqua. Ut enim ad minim veniam,",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SelfiePunch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Text(
          "Selfie Punch",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
    );
  }
}

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Text(
          "Report",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
    );
  }
}

class HelpdeskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Text(
          "Helpdesk",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Text(
          "Logout",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
    );
  }
}

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key, required this.title});

  final String title;

  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w300);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Selfie Punch",
      style: optionStyle,
    ),
    Text(
      "Show Selfie Punch",
      style: optionStyle,
    ),
    Text(
      "Report",
      style: optionStyle,
    ),
    Text(
      "Help Desk",
      style: optionStyle,
    ),
    Text(
      "Logout",
      style: optionStyle,
    ),
  ];

  void _navigateToPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = SelfiePunch();
        break;
      case 1:
        page = const CameraSelfie(); // Replace with your Show Selfie Punch page
        break;
      case 2:
        page = ReportPage();
        break;
      case 3:
        page = HelpdeskPage();
        break;
      case 4:
        page = LoginPage();
        break;
      default:
        page =
            const CameraSelfie(); // Default to CameraSelfie page for unknown index
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(4, 85, 214, 1),
        title: const Center(
          child: Text(
            "Hello, Sambhavi,0001",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Column(children: [
                Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/images/image1.png"),
                  ),
                ),
                Text(
                  "Sambhavi",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                Text("Emp Code:0001",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    )),
              ]),
            ),
            ListTile(
              leading: const Icon(
                Icons.photo_camera_outlined,
                color: Color.fromRGBO(4, 85, 214, 1),
              ),
              title: const Text(
                " Selfie Punch",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => _navigateToPage(context, 0),
            ),
            ListTile(
              leading: const Icon(
                Icons.add_photo_alternate_outlined,
                color: Color.fromRGBO(4, 85, 214, 1),
              ),
              title: const Text(
                "Show Selfie Punch",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => _navigateToPage(context, 1),
            ),
            ListTile(
              leading: const Icon(
                Icons.report_outlined,
                color: Color.fromRGBO(4, 85, 214, 1),
              ),
              title: const Text(
                "Report",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => _navigateToPage(context, 2),
            ),
            ListTile(
              leading: const Icon(
                Icons.headset_mic_outlined,
                color: Color.fromRGBO(4, 85, 214, 1),
              ),
              title: const Text(
                "Helpdesk",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => _navigateToPage(context, 3),
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: Color.fromRGBO(4, 85, 214, 1),
              ),
              title: const Text(
                "Logout",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
              onTap: () => _navigateToPage(context, 4),
            ),
          ],
        ),
      ),
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 90,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color.fromRGBO(4, 85, 214, 1),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 150,
                  width: 340,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5, 5),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Text("Punch In/Out",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.light_mode,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(Icons.work_history, color: Colors.grey),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child:
                                  Icon(Icons.nights_stay, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "--:--",
                                style: TextStyle(
                                    color: Color.fromRGBO(4, 85, 214, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Text(
                              "--:--",
                              style: TextStyle(
                                  color: Color.fromRGBO(4, 85, 214, 1),
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                "--:--",
                                style: TextStyle(
                                    color: Color.fromRGBO(4, 85, 214, 1),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "IN",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Text(
                              "Work Hrs",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                "OUT",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 325,
            width: 340,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(5, 5),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Text("Attendance",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400)),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: MultiCircularSlider(
                      size: MediaQuery.of(context).size.width * 0.3,
                      progressBarType: MultiCircularSliderType.circular,
                      values: const [
                        1.5,
                        0.9,
                      ],
                      colors: const [Color(0xFFFD1960), Color(0xFF18C737)],
                      showTotalPercentage: false,
                      progressBarWidth: 2,
                      trackWidth: 7,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "2",
                        style: TextStyle(
                            color: Color(0xFF18C737),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                            color: Colors.amber[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      const Text(
                        "22",
                        style: TextStyle(
                            color: Color(0xFFFD1960),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Present",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text(
                          "Late",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text(
                          "Absent",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "7",
                          style: TextStyle(
                              color: Color(0xFF29D3E8),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        Text(
                          "24",
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Week off",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      Text(
                        "Working Days",
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromRGBO(4, 85, 214, 1),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.photo_camera_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Punch",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

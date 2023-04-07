import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sizer/sizer.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 189, 189, 189),
                  size: 35,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Text(
            '#200385',
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon:
                  Icon(Icons.account_circle, color: Colors.grey[200], size: 35),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: ListView(
            children: <Widget>[
              const Padding(padding: const EdgeInsets.only(top: 240)),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.confirmation_number,
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text('Ticket'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.qr_code,
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text('Code'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8),
                  ),
                  Image.asset('images/4.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  const TicketInfo(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          itemPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 22),
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.blue,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.confirmation_number),
              title: const Text("Tickets"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.qr_code),
              title: const Text("Code"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}

class TicketInfo extends StatefulWidget {
  const TicketInfo({Key? key}) : super(key: key);

  @override
  State<TicketInfo> createState() => _TicketInfoState();
}

class _TicketInfoState extends State<TicketInfo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(bottom: 5, top: 20, left: 20, right: 20),
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 35),
                ),
                const ListTile(
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.only(left: 20),
                  leading: Image(
                    image: AssetImage('images/persija.png'),
                    width: 50,
                    height: 50,
                  ),
                  title: Text(
                    'Persija Jakarta',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const ListTile(
                  visualDensity: VisualDensity.compact,
                  isThreeLine: false,
                  horizontalTitleGap: 0,
                  contentPadding: EdgeInsets.only(left: 20),
                  shape: RoundedRectangleBorder(),
                  title: Text(
                    textAlign: TextAlign.center,
                    'VS',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const ListTile(
                  visualDensity: VisualDensity.compact,
                  isThreeLine: false,
                  contentPadding: const EdgeInsets.only(left: 20),
                  leading: Image(
                    image: const AssetImage('images/5.png'),
                    width: 50,
                    height: 50,
                  ),
                  title: Text(
                    'Bali United F.C.',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const ListTile(
                  contentPadding: EdgeInsets.only(top: 22, left: 20),
                  title: const Text(
                    'Date & Time:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    '14:30          12.12.2022',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 20, right: 20, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          child: Card(
                            color: Colors.grey[200],
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            shadowColor: Colors.grey[200],
                            child: const ListTile(
                              isThreeLine: false,
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                textAlign: TextAlign.center,
                                'Front Side',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Card(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            shadowColor: Colors.grey[200],
                            color: Colors.grey[200],
                            child: const ListTile(
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                textAlign: TextAlign.center,
                                'Block 154',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: Card(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                            ),
                            shadowColor: Colors.grey[200],
                            color: Colors.grey[200],
                            child: const ListTile(
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                textAlign: TextAlign.center,
                                'Seat 15',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const ListTile(
                  contentPadding: const EdgeInsets.only(top: 16, left: 20),
                  title: const Text(
                    'Your Name:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: const Text(
                    'Irham Khairul',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 30,
                ),
                const Image(
                  image: const AssetImage('images/barcode.png'),
                  width: 2000,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        iconSize: 20,
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const Icon(Icons.info_outline_rounded),
                        color: Colors.grey,
                      ),
                      IconButton(
                        iconSize: 20,
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const Icon(Icons.download_rounded),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

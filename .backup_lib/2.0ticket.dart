import 'package:flutter/material.dart';
import 'main.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
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
                  Padding(
                    padding: const EdgeInsets.all(8),
                  ),
                  Image.asset('images/4.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  TicketInfo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TicketInfo extends StatelessWidget {
  const TicketInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 70, left: 25, right: 25, bottom: 90),
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 20),
                ),
                ListTile(
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
                ListTile(
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
                ListTile(
                  visualDensity: VisualDensity.compact,
                  isThreeLine: false,
                  contentPadding: EdgeInsets.only(left: 20),
                  leading: Image(
                    image: AssetImage('images/5.png'),
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
                ListTile(
                  contentPadding: EdgeInsets.only(top: 22, left: 20),
                  title: Text(
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
                  padding:
                      EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          child: Card(
                            color: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            shadowColor: Colors.grey[200],
                            child: ListTile(
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
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            shadowColor: Colors.grey[200],
                            color: Colors.grey[200],
                            child: ListTile(
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
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            shadowColor: Colors.grey[200],
                            color: Colors.grey[200],
                            child: ListTile(
                              visualDensity: VisualDensity.compact,
                              title: Text(
                                textAlign: TextAlign.center,
                                'Seat 15',
                                style: TextStyle(
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
                ListTile(
                  contentPadding: EdgeInsets.only(top: 16, left: 20),
                  title: Text(
                    'Your Name:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    'Irham Khairul',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Image(
                  image: AssetImage('images/barcode.png'),
                  width: 2000,
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        iconSize: 20,
                        splashRadius: 20,
                        onPressed: () {},
                        icon: Icon(Icons.info_outline_rounded),
                        color: Colors.grey,
                      ),
                      IconButton(
                        iconSize: 20,
                        splashRadius: 20,
                        onPressed: () {},
                        icon: Icon(Icons.download_rounded),
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

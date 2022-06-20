import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '/constants.dart';
import 'maindrawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() =>
      _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  // void _closeDrawer() {
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    Widget textMenu = Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
      children: [
        _buildTextMenu(color, 'Home'),
        _buildTextMenu(color, 'Wallet'),
        _buildTextMenu(color, 'Articles'),
        _buildTextMenu(color, 'Ask a Question'),
        _buildTextMenu(color, 'Insurance'),
        _buildTextMenu(color, 'Package'),
        _buildTextMenu(color, 'Shop')
      ],
    );

    Widget buttonSection = Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(
              color,
              Icons.note_alt,
              'Consultation Record'),
          _buildButtonColumn(color, Icons.receipt,
              'My Prescription'),
          _buildButtonColumn(
              color,
              Icons.health_and_safety,
              'My Doctor'),
          _buildButtonColumn(
              color,
              Icons.emergency_outlined,
              'Ambulance'),
        ],
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      appBar: AppBar(
        shadowColor: kPrimaryColor,
        toolbarHeight: 200,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            const SizedBox(
              width: 150.0,
              child: Text(
                'Good Morning',
                style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: 150,
              child: Text('USER NAME',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(
                          fontWeight:
                              FontWeight.w500,
                          color: Colors.black)),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: _openDrawer)
        ],
      ),
      drawer: const MainDrawer(),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/Image13.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
              // repeat: ImageRepeat.repeat,
            ),
          ),
          child: ListView(children: [
            textMenu,
            const Searching(),
            const menuBox(),
            buttonSection,
            const Divider(
              height: 12,
              color: kPrimaryColor,
            ),
          ])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
              color: kPrimaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm,
                  color: kPrimaryColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.task,
                  color: kPrimaryColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long,
                  color: kPrimaryColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner,
                  color: kPrimaryColor),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,
                  color: kPrimaryColor),
              label: ''),
        ],
        // color: kPrimaryColor,

        // currentIndex: _selectedIndex,
        // selectedItemColor: kPrimaryColor,
        // onTap: _onItemTapped,
      ),
    );
  }
}

class menuBox extends StatelessWidget {
  const menuBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight:
                  Radius.circular(0),
              bottomLeft:
                  Radius.circular(10),
              bottomRight:
                  Radius.circular(10),
            ),
            color: const Color.fromRGBO(
                255, 255, 255, 1),
            border: Border.all(
              color: const Color.fromRGBO(
                  100, 67, 155, 1),
              width: 1,
            ),
          ),
          child: const Text(
            'Doctor Online Now',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight:
                  Radius.circular(0),
              bottomLeft:
                  Radius.circular(10),
              bottomRight:
                  Radius.circular(10),
            ),
            color: const Color.fromRGBO(
                255, 255, 255, 1),
            border: Border.all(
              color: const Color.fromRGBO(
                  100, 67, 155, 1),
              width: 1,
            ),
          ),
          child: const Text(
            'Doctor Online Now',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

Column _buildTextMenu(Color color, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Container(

      Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: color,
        ),
      ),
      // ),
      // const Spacer(flex: 1),
    ],
  );
}

Column _buildButtonColumn(
    Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

class Searching extends StatefulWidget {
  const Searching({Key? key}) : super(key: key);

  @override
  State<Searching> createState() =>
      _SearchingState();
}

class _SearchingState extends State<Searching> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text:
          'Doctor name, Specialization, Disease, Country, Language, Feedback, Fee, Availability time',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: CupertinoSearchTextField(
          controller: _textController,
          style: const TextStyle(fontSize: 12.0),
          // padding: EdgeInsets.all(32.0),
        ));
  }
}

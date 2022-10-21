import 'package:flutter/material.dart';
import 'package:ma_asim/screens/appointmentScreen.dart';
import 'package:ma_asim/screens/findADoctorScreen.dart';
import 'package:ma_asim/screens/healthzoneScreen.dart';
import 'package:ma_asim/screens/homeScreen.dart';
import 'package:ma_asim/screens/medicalRecordsScreen.dart';
import 'package:ma_asim/screens/myProfileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        key: scaffoldKey,
        appBar: customAppbar(scaffoldKey),
        body: bottomNavigationTab(),
        drawer: customDrawer(),
      ),
    );
  }
}

//////////////        Custom Appbar code starts here   //////////////////
customAppbar(GlobalKey<ScaffoldState> scaffoldKey){
  return(
      AppBar(
        leading: IconButton(
          icon: Icon(Icons.person),
          onPressed: (){
            if(scaffoldKey.currentState!.isDrawerOpen){
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            }else{
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),

        title: Center(child: const Text("MD APP")),
        actions: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Lahore'),
              Icon( // <-- Icon
                Icons.arrow_drop_down_rounded,
                size: 24.0,
              ),
            ],
          ),
        ],
      )
  );
}
//////////////        Custom Appbar code ENDS here   //////////////////


//////////////        Bottom navigation Tab code starts here   //////////////////
class bottomNavigationTab extends StatefulWidget {
  const bottomNavigationTab({super.key});
  @override
  State<bottomNavigationTab> createState() => _bottomNavigationTabState();
}

class _bottomNavigationTabState extends State<bottomNavigationTab> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> tabs = [
    homeScreen(),
    appointmentScreen(),
    medicalRecordsScreen(),
    healthzoneScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,

        type: BottomNavigationBarType.fixed,
        // backgroundColor: Color(0xFF6200EE),
        // selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.white.withOpacity(.90),
        selectedFontSize: 14,
        unselectedFontSize: 14,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              size: 20,
            ),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                size: 20,
              ),
              label: 'Records'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
                size: 20,
              ),
              label: 'Healthzone'),
        ],
      ),
    );
  }
}
//////////////        Bottom navigation Tab code ENDS here   //////////////////

//////////////        Custom Drawer code starts here   //////////////////
class customDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return (Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('My Profiles',),
                Text('03016335810',),
              LinearProgressIndicator(
                value: 50,
                color: Colors.green,
              ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom( //<-- SEE HERE
                    side: BorderSide(width: 3.0),
                    backgroundColor: Colors.blue
                  ),
                  child: Text('Edit Profile', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('My Profiles'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => myProfileScreen()),
              );
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('Recent Doctors'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('Wallet'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('Refer a Friend'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    ));
  }
}
//////////////        Custom Drawer code ENDS here   //////////////////

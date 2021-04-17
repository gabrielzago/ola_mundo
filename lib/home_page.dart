import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Gabriel'),
              accountEmail: Text('a@a.com'),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('asset/image/lua.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de inicio'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.all_out),
              title: Text('Lougout'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [CustomSwitch()],
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Contador : $counter'),
            Container(height: 10),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
              ],
            ),
          ])
          // child: ListView(
          //     // mainAxisAlignment: MainAxisAlignment.center,
          //     scrollDirection: Axis.vertical,
          //     children: [
          //       Text('Contador : $counter'),
          //       Container(height: 10),
          //       CustomSwitch(),
          //       Container(height: 50),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Container(
          //             width: 50,
          //             height: 50,
          //             color: Colors.green,
          //           ),
          //           Container(
          //             width: 50,
          //             height: 50,
          //             color: Colors.green,
          //           ),
          //           Container(
          //             width: 50,
          //             height: 50,
          //             color: Colors.green,
          //           ),
          //         ],
          //       ),
          //     ])
          // child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [Text('Contador : $counter'), CustomSwitch()]),
          // child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [Text('Contador : $counter'), CustomSwitch()]),
          ),
      // body: Center(
      //     child: GestureDetector(
      //         child: Text(
      //           "Contador:  $counter",
      //           style: TextStyle(fontSize: 20),
      //         ),
      //         onTap: () {
      //           setState(() {
      //             counter++;
      //           });
      //         })),
      // body: Container(
      //   height: 200,
      //   width: 200,
      //   color: Colors.green,
      //   child: Center(
      //       child: Container(
      //     height: 100,
      //     width: 100,
      //     color: Colors.green,
      //   )),
      // ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add)),
    );
    /*return Container(
      child:  Center(
          child: GestureDetector(
              child: Text("Contador:  $counter"),
              onTap: () {
                setState(() {
                  counter++;
                });
              })),
    );*/
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}

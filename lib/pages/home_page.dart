import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text(
            'Dream Hunters',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 400.0, // Set the width as needed
                  height: 400.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      image: AssetImage('assets/homeImage.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: ListView(
                    children: [
                      _buildButton(
                          context, 'Go to Test', Icons.workspace_premium_sharp),
                      SizedBox(
                        height: 20,
                      ),
                      _buildButton(context, 'Settings', Icons.settings),
                      SizedBox(
                        height: 20,
                      ),
                      _buildButton(
                          context, 'Quit', Icons.door_back_door_outlined),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildButton(BuildContext context, String text, IconData icon) {
    return Container(
      width: 100,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (text == 'Go to Test') {
            Navigator.pushNamed(context, 'testPage');
          } else if (text == 'Quit') {
            SystemNavigator.pop();
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade900, // Set the desired color
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              width: 5.0,
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

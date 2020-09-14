import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MiCardScreen());
  }
}

class MiCardScreen extends StatelessWidget {
  Widget _buildInformationContainers(String text, Icon icon) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Card(
          // width: double.infinity,
          // height: 40,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: icon,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    text, //
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/junaid_hassan_image.jpg'),
                radius: 70,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Junaid Hassan',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  letterSpacing: 2.5,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Container(margin: EdgeInsets.symmetric(horizontal: 50),
                child: Divider(
                  color: Colors.white,
                ),
              ),
              _buildInformationContainers(
                '+923124400184',
                Icon(Icons.phone),
              ),
              _buildInformationContainers(
                'junaidhassan2211@gmail.com',
                Icon(Icons.email),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

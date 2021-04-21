import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));


class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int num= 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
            "PROFILE CARD",
        style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            letterSpacing: 2.0,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 60,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Anekant Jain',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amberAccent,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'INSTITUTE',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'IIT, Roorkee',
              style: TextStyle(
                fontSize: 30,
                color: Colors.amberAccent,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 25),
            Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.white,
              ),
             SizedBox(width: 5),
              Text(
                "anekantj2800@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.amberAccent,
                ),
              )
            ],
            ),
            SizedBox(height: 25),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  '$num',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.amberAccent,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            num +=1;
          });
        },
        child: Text(
            '+',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),

        ),
        backgroundColor: Colors.white54,
      ),
    );
  }
}



import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
  debugShowCheckedModeBanner: false,
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ONE PIECE',
          style: TextStyle(
            fontFamily: 'OnePiece',
            fontSize: 40.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0), // Adjust the padding to set the margin
        child: InkWell(
          onTap: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Image.asset(
            'assets/jollyroger.png', // Replace with your image path
            width: 60.0, // Adjust size as needed
            height: 60.0, // Adjust size as needed
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_onepiece.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/zoro.jpeg'),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 0.0),
                Text(
                  'Roronoa Zoro ロロノア・ゾロ',
                  style: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'HOMETOWN',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 0.0),
                Text(
                  'Shimotsuki Village, East Blue',
                  style: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 30.0),

                Text(
                  'Number of times lost in direction',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Text(
                      'SWORDS',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wado Ichimonji (Shimotsuki Village)',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Enma (Wano)',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Sandai Kitetsu (Lougetown)',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Text(
                      'HAKI',
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(width: 50.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Haoshoku Haki',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Bosushoku Haki',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          'Kenbunshoku Haki',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'roronoazoro@gps.com',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

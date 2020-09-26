import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:AyatCard(),
));

class AyatCard extends StatefulWidget {
  @override
  _AyatCardState createState() => _AyatCardState();
}

class _AyatCardState extends State<AyatCard> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar:AppBar(
          title: Text('Ayat Card Id'),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          elevation: 0.0,
        ) ,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              level+=1;
            });
          },
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.grey[800],
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(40.0),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/amine.jpg'),
                  radius: 50,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[500],
              ),
              Text(
                'Name',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15
                ),
              ),
              SizedBox(height: 15.0,),
              Text(
                'Ayat Amine',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 25.0,),
              Text(
                'Current Level',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15
                ),
              ),
              SizedBox(height: 15.0,),
              Text(
                '$level',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height:25.0,),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    'ayatir04@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              )
            ],
          ),
        ) ,
    );
  }
}




import 'package:flutter/material.dart';
import 'AlphabetExercises.dart';

class Alphabet extends StatefulWidget {
  @override
  _AlphabetState createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alfabeto"),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [

          Container(
            padding: EdgeInsets.all(10),
            child: Text('Vamos estudar o alfabeto!',
            style: TextStyle(fontSize: 20)
            ),
          ),

          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Image(
              image: AssetImage('assets/Untitled.png'),
            ),
          ),

          ButtonTheme(
            minWidth: 200,
            height: 50,
            child: RaisedButton(
                child: Text('Vamos praticar!',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AlphabetExercises()
                    ),
                  );
                }
            ),
          ),

        ],
      ),
    );
  }
}

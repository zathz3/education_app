import 'package:flutter/material.dart';
import 'NumbersExercises.dart';

class Numbers extends StatefulWidget {
  @override
  _NumbersState createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numeros'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [

          Container(
            padding: EdgeInsets.all(10),
            child: Text('Vamos estudar os numeros!',
                style: TextStyle(fontSize: 20)
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Image(
                image: AssetImage('assets/numbers.png'),
              ),
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
                        builder: (context) => NumbersExercises()
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

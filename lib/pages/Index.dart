import 'package:flutter/material.dart';
import 'Alphabet.dart';
import 'Numbers.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indice'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [

          Padding(
            padding: EdgeInsets.only(left: 80, bottom: 20),
            child: ButtonTheme(
              minWidth: 200,
              height: 50,
              child: RaisedButton(
                  child: Text('Alfabeto',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Alphabet()
                      ),
                    );
                  }
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:80),
            child: ButtonTheme(
              minWidth: 200,
              height: 50,
              child: RaisedButton(
                  child: Text('Numeros',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Numbers()
                      ),
                    );
                  }
              ),
            ),
          ),



        ],
      ),
    );
  }
}

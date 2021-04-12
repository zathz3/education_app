import 'package:flutter/material.dart';

class AlphabetExercises extends StatefulWidget {
  @override
  _AlphabetExercisesState createState() => _AlphabetExercisesState();
}

class _AlphabetExercisesState extends State<AlphabetExercises> {
  bool _ck1 = false;
  bool _ck2 = false;
  bool _ck3 = false;
  bool _ck4 = false;
  bool _ck5 = false;
  String _answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Marque as opções que representam uma sequencia correta',
              style: TextStyle(fontSize: 20),
            ),
          ),

          Row(
            children: [
              Checkbox(
                value: _ck1,
                onChanged: (bool value){
                  setState(() {
                    _ck1 = value;
                  });
                },
              ),
              Text('A B C D E',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          Row(
            children: [
              Checkbox(
                value: _ck2,
                onChanged: (bool value){
                  setState(() {
                    _ck2 = value;
                  });
                },
              ),
              Text('F G H I J',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          Row(
            children: [
              Checkbox(
                value: _ck3,
                onChanged: (bool value){
                  setState(() {
                    _ck3 = value;
                  });
                },
              ),
              Text('N M O P Q',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          Row(
            children: [
              Checkbox(
                value: _ck4,
                onChanged: (bool value){
                  setState(() {
                    _ck4 = value;
                  });
                },
              ),
              Text('V W Y X Z',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          Row(
            children: [
              Checkbox(
                value: _ck5,
                onChanged: (bool value){
                  setState(() {
                    _ck5 = value;
                  });
                },
              ),
              Text('R S T U V',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),


          ButtonTheme(
            minWidth: 200,
            height: 50,
            child: RaisedButton(
                child: Text('Conferir',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  if ( _ck1 == true && _ck2 == true && _ck3 == false && _ck4 == false && _ck5 == true){
                    setState(() {
                      _answer = "Resposta correta";
                    });
                  }else{
                    setState(() {
                      _answer = "Resposta errada";
                    });
                  }
                }
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('$_answer'),
          ),


        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../shared/custom_app_menu.dart';
import '../shared/custom_flat_button.dart';


class CounterPage extends StatefulWidget {

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int Counter = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [

          CustomAppMenu(),

          Spacer(),
          
           Text('Contador Stateful', style: TextStyle(fontSize:20)),

          
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Text(
                'Contador:$Counter',
              style:TextStyle(fontSize: 80, fontWeight: FontWeight.bold ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  text: 'Incrementar',
                  onPressed: () => setState(() => Counter++)
              ),

              CustomFlatButton(
                  text: 'Decrementar',
                  onPressed: () => setState(() => Counter--)
              )
            ],
          ),
Spacer(),
            ],
      ),
        );
  }
}

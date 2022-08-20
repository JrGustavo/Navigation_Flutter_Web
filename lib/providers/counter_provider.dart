import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int _counter = 16 ;

get counter => this._counter;

    void increment(){
    this._counter++;
    notifyListeners();
    }

    void Decremento(){
    this._counter--;
    notifyListeners();

    }


}

import 'package:flutter/material.dart';
import 'package:entrada_dados/CampoTexto.dart';
import 'package:entrada_dados/EntradaRadioButton.dart';
import 'EntradaCheckBox.dart';
import 'EntradaSwitch.dart';

void main(){
  runApp(
    MaterialApp(
      //home: CampoTexto(),
      //home: EntradaCheckBox(),
      //home: EntradaRadioButton(),
      home: EntradaSwitch(),
    )
  );
}
import 'package:first_app/ui/form_textFormField.dart';
import 'package:first_app/ui/text_Field_Features.dart';
import 'package:flutter/material.dart';
import 'ui/navigasyon_islemleri.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: "/textFormField",

    routes: {
      "/": (context) => NavigasyonIslemleri(),
      "/BPage": (context) => BSayfasi(),
      "/CPage": (context) => CSayfasi(),
      "/DPage": (context) => DSayfasi(),
      "/EPage": (context) => ESayfasi(),
      "/FPage": (context) => FSayfasi(),
      "/GPage": (context) => GSayfasi(),
      "CPage/DPage": (context) => DSayfasi(),
      "/CPage/DPage/EPage": (context) => ESayfasi(),
      "/listeSayfasi": (context) => ListeSayfasi(),
      "/textField": (context) => TextFieldProcess(),
      "/textFormField": (context) => FormandTextFormField(),
    },

    onGenerateRoute: (RouteSettings settings){
      List<String> pathElemanlari = settings.name.split("/");

      if(pathElemanlari[1] == 'detay'){
        return MaterialPageRoute(builder: (context) => ListeDetay(int.parse(pathElemanlari[2]))); // /detay/$index
      }
    },

    //hatalı rota varsa daha önceden belirlediğiniz bir rotaya atama yapılan yapı
    onUnknownRoute: (RouteSettings settings) =>
        MaterialPageRoute(builder: (context) => NavigasyonIslemleri()),
    title: "Flutter Öğreniyorum",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    //home: NavigasyonIslemleri(),
  ));
}

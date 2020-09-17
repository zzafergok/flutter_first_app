import 'package:flutter/material.dart';

class OtherFormProcess extends StatefulWidget {
  @override
  _OtherFormProcessState createState() => _OtherFormProcessState();
}

class _OtherFormProcessState extends State<OtherFormProcess> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchState = false;
  double sliderDeger = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_circle),
      ),
      appBar: AppBar(
        title: Text("Other Form Process"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi;
                });
              },
              activeColor: Colors.blueGrey,
              secondary: Icon(Icons.add),
              title: Text("Checkbox Title"),
              subtitle: Text("Checkbox Title"),
              selected: false,
            ),
            RadioListTile<String>(
              value: "Adana",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen Sehir: $deger");
                });
              },
              title: Text("Adana"),
            ),
            RadioListTile<String>(
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen Sehir: $deger");
                });
              },
              title: Text("İstanbul"),
            ),
            RadioListTile<String>(
              value: "Amsterdam",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  debugPrint("Secilen Sehir: $deger");
                });
              },
              title: Text("Amsterdam"),
              subtitle: Text("I love Amsterdam"),
              secondary: Icon(Icons.account_balance),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  switchState = deger;
                  if (deger == false) {
                    debugPrint("kapalı");
                  } else {
                    debugPrint("açık");
                  }
                });
              },
              secondary: Icon(Icons.local_library),
              title: Text("merhaba switch"),
              subtitle: Text("merhaba ben subtitle"),
            ),
            Slider(
                value: sliderDeger,
                onChanged: (deger) {
                  setState(() {
                    sliderDeger = deger;
                    debugPrint("Slider deger : $deger");
                  });
                },
              min: 10,
              max: 30,
              divisions: 10,
              label: sliderDeger.toString(),
              activeColor: Colors.blue,
              //inactiveColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

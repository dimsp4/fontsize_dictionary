import 'package:flutter/material.dart';

void main() {
  runApp(CariFont());
}

class CariFont extends StatefulWidget {
  @override
  State<CariFont> createState() => _CariFontState();
}

class _CariFontState extends State<CariFont> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Font Size"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: double.parse(counter.toString())),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                    print(counter);
                  },
                  child: Icon(Icons.remove),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      counter = 1;
                    });
                    print(counter);
                  },
                  child: Icon(Icons.restart_alt),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
            Text(
                "tekan tombol + agar bisa melihat angka ditengah,\nkarena fontSize = 1 sangat kecil.")
          ],
        ),
      ),
    );
  }
}

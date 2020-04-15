import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyCustomMate();
  }
}

class RandomEg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RandomEgState();
  }
}

class RandomEgState extends State<RandomEg> {
  var list = ['Nguyen Duc Luong', 'Nguyen Van An', 'Nguyen Van Duc',
      'Tran Thu Hang', 'Vu Van Tinh', 'Nguyen Duc Anh',
      'Luong Duc Tan', 'Trinh Duc Hoa', 'Nguyen Thi Thu Thuy',
      'Tra Duc Dan', 'Dao Duc Khiem', 'Nguyen Quoc Tuan',
      'Nguyen Duc Luong', 'Nguyen Van An', 'Nguyen Van Duc'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          tooltip: "onClick",
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Colors.blue,
        title: Text("Mofin App"),
      ),

      body: new ListView.builder(itemBuilder: (context, index) {
        final color = index % 2 == 0 ? Colors.blue : Colors.red;
        if(index == list.length){
          return null;
        }
        return _buildRow(list[index], color);
          }),

      backgroundColor: Colors.lime,
    );
  }
  Widget _buildRow(String string, Color color) {
    return ListTile(
      leading: IconButton(
        onPressed: null,
        tooltip: "onClick",
        icon: Icon(Icons.account_circle),
      ),
        title: Text(string, style: TextStyle(
            color: color,
            fontSize: 19.0
        ),)
    );
  }
}

class MyCustomMate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        home: Center(
          child: new RandomEg(),
        )
    );
  }
}

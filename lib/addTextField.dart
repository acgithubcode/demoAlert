import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {
  List<DynamicWidget> listDynamic = [];
//  function to add widget
  addDynamic() {
    listDynamic.add(DynamicWidget());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                  itemCount: listDynamic.length,
                  itemBuilder: (_, index) => listDynamic[index]),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addDynamic,
        child: Icon(Icons.add),
      ),
    );
  }
}

//this will add on click
class DynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(hintText: "Add prescription"),
      ),
//        TextField(
//          decoration: InputDecoration(hintText: "time"),
//        ),
    );
  }
}

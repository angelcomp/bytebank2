import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaContatos extends StatelessWidget {
  const ListaContatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text('Angelica', style: TextStyle(fontSize: 24.0)),
              subtitle: Text('1234', style: TextStyle(fontSize: 16.0)),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}

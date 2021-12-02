import 'package:bytebank/models/contacts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsForm extends StatefulWidget {

  @override
  State<ContactsForm> createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New coontact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Full name'),
              style: TextStyle(fontSize: 24.0),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(labelText: 'Account number'),
                style: TextStyle(fontSize: 24.0),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  child: const Text('Create'),
                  onPressed: () {
                    final String name = _nameController.text;
                    final int? accountNumber = int.tryParse( _accountNumberController.text);
                    final newContact = Contacts(0, name, accountNumber!);
                    Navigator.pop(context, newContact);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

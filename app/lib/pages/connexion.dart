import 'package:flutter/material.dart';
class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion/Inscription"),
      ),
    );
  }
}
class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Identifiant',
                hintText: 'Entrez votre identifiant',
              ),
            )
          ],
        )
    );
  }
}


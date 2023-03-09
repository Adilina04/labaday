import 'package:flutter/material.dart';

import 'add.dart';
import 'connexion.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accueil"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/2.jpg"),
              Padding(padding: EdgeInsets.all(10)),
              const Text(
                "Bienvenue",
                style: TextStyle(
                  fontSize: 42,
                ),
              ),

              const Text("Cliquez sur le menu",
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10))
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => EventPage()
                        )
                    );
                  },
                  child: Text("Connexion/Inscription"))
            ],
          )
      ),
    );
  }
}
import 'package:app/pages/camera.dart';
import 'package:flutter/material.dart';

import 'add.dart';
import 'inscription.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => CameraApp()
              )
          );
        },
        child: Icon(Icons.camera_alt),
      ),
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: const Text("Accueil"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("assets/images/logo.png"),
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
                            pageBuilder: (_, __, ___) => AddAccountPage()
                        )
                    );
                  },
                  child: Text("Connexion/Inscription")),


            ],
          )
      ),
    );
  }
}
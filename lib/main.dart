import 'package:flutter/material.dart';
import 'package:ficha1/ficha1.dart';

void main() {
  runApp(const Ficha1());
}

class BotaoCadastro extends StatelessWidget {
  const BotaoCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Abrir Formulário'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CadastroForm()),
        );
      },
    );
  }
}

class Ficha1 extends StatelessWidget {
  const Ficha1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ficha 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FichaScafold(),
    );
  }
}

class FichaScafold extends StatelessWidget {
  const FichaScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [BotaoCadastrox()],
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          color: Colors.blue,
          padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: const Text(
            'Hello, Flutter!----',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}



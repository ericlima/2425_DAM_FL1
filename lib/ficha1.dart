import 'package:flutter/material.dart';

class CadastroForm extends StatefulWidget {
  @override
  _CadastroFormState createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _foneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe o e-mail';
                  }
                  if (!value.contains('@')) {
                    return 'E-mail inválido';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _foneController,
                decoration: InputDecoration(labelText: 'Telefone'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe o telefone';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Aqui você pode salvar ou enviar os dados
                    final email = _emailController.text;
                    final fone = _foneController.text;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Cadastro feito: $email / $fone')),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

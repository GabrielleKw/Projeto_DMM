import 'package:flutter/material.dart';
import 'package:flutter_application_diario/models/user.dart';
import 'package:flutter_application_diario/provider/users.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro Livro'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final isValid = _form.currentState!.validate();

                /*    if (isValid) {
                _form.currentState!
                 .save(); //esse metodo ele chama o metodo save dentro de cada field
                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'],
                    name: _formData['name'],
                    autor: _formData['autor'],
                    avatarUrl: _formData['avatarUrl'],
                  ),
                );
                Navigator.of(context).pop();*/
              }
              //},
              ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(50), //para n ficar grudado a tela
        child: Form(
          key: _form,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome Livro'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'nome inválido';
                  }
                  return null; //se volta nulo segnifica que esta validando
                },
                onSaved: (value) => _formData['name'] = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Autor: '),
                onSaved: (value) => _formData['autor'] = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'URL da imagem'),
                onSaved: (value) => _formData['avatarUrl'] = value!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_application_diario/components/user_tile.dart';
import 'package:flutter_application_diario/provider/users.dart';
import 'package:flutter_application_diario/routes/app_routes.dart';
import 'package:provider/provider.dart';

//minha tela com os livros
//tela inicial
class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Leituras'), //titulo da minha tela, dessa.
        actions: <Widget>[
          //criação button de adicionar
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
            },
            //cor meu button
            color: Color.fromARGB(255, 253, 253, 253),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
      // listview estrutura que cria uma lista e carrega apenas os que
      //estão sendo exibidos na tela, e não todos.
    );
  }
}

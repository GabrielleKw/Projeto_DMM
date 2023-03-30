import 'package:flutter/material.dart';
import 'package:flutter_application_diario/provider/users.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import '../routes/app_routes.dart';

//criação de compomentes que representa cada um da list main
class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    //estou verificando se usuario colocou foto do livro, caso não colo um img
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(
            Icons.image,
            size: 100.0, //era pra aumentar né??
          ))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
//imagem da rede para não guarda na aplicação
// a partir da url é feito a busca na red

//cria com list tile tijolinho" permite tudo ficar organizado
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.autor),
      trailing: Container(
        width: 100, //espaço ficho para meu button, os dois
        child: Row(
          //definição dos filhos
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.pink.shade200,
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink.shade400,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: Text('Excluir Livro'),
                    content: Text('Tem certeza?'),
                    actions: <Widget>[
                      FloatingActionButton(
                        child: Text('Não'),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      FloatingActionButton(
                        child: Text('Sim'),
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ],
                  ),
                ).then((confimed) {
                  Provider.of<Users>(context).remove(user);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

//aqui nesta classe, é onde vou me permite criar altera realizar ações no user

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_diario/data/dummy_users.dart';
import 'package:flutter_application_diario/models/user.dart';

class Users with ChangeNotifier {
  //padrão observ = changeNotifier semp que ver um mudança
  // a interface grafica sera alterada
  final Map<String, User> _items = {...DUMMY_USERS};
//_ no começo significa metodo privado 

//metodo get que retorna a lista
  List<User> get all {
    return [..._items.values];
  }

//metodo 
  int get count {
    return _items.length;
  }

  get length => null;

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }
    //se n for null,

    //alteração
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
          user.id,
          (_) => User(
                id: user.id,
                name: user.name,
                autor: user.autor,
                avatarUrl: user.avatarUrl,
              ));
    } else {
      //adicionar
      final id = Random().nextDouble().toString(); //gerar id automatico
      _items.putIfAbsent(
          id,
          () => User(
                id: id,
                name: user.name,
                autor: user.autor,
                avatarUrl: user.avatarUrl,
              ));
      //putifabsent inclui se não tiver presente
    }

    notifyListeners(); // permite o provide ser noticado para realizar a mudanção
  }

  void remove(User user) {
    if (user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}

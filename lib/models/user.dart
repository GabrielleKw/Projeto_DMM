import 'package:flutter/material.dart';

//essa é minha classe usuario, classe modelo, no caso minha classe de libros
class User {
  final String id;
  final String name;
  final String autor;
  final String avatarUrl;

//crio o construtor, e como todos os atributos são finais uso this(eles só podem ser inicializados uma vez).
  const User({
    required this.id,
    required this.name,
    required this.autor,
    required this.avatarUrl,
  });
}

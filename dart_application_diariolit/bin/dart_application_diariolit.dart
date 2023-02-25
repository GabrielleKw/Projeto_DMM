import 'dart:io';

import 'package:dart_application_diariolit/dart_application_diariolit.dart' as dart_application_diariolit;

void main(List<String> arguments) {

  leitura();
  
  
}
void leitura (){
  print(" Olá, insirá os dados do livro que você leu:   ");

  String nomeLivro;
  print("Digite o nome do livro: ");
  nomeLivro = stdin.readLineSync()!;

  String nomeAutor;
  print("Digite o nome do Autor(a): ");
  nomeAutor = stdin.readLineSync()!;

  String entradaNumPG;
  int numPg;
  print("Digite o número de páginas: ");
  entradaNumPG = stdin.readLineSync()!;
  numPg = int.parse(entradaNumPG);

  String brasileiro;
  print("É um livro brasileiro: ");
  brasileiro = stdin.readLineSync()!;

  String entradaNota;
  double nota;
  print("Digite a nota que você daria a esse livro (Até 10): ");
  entradaNota = stdin.readLineSync()!;
  nota = double.parse(entradaNota);


  double moedas = (numPg * nota)/2;

  print("Parabéns pela leitura do livro $nomeLivro, você adquiriu de moedas: $moedas");

}
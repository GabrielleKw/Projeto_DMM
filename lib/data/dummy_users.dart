import 'package:flutter_application_diario/models/user.dart';

//criação de um Map, com a chave ID, e os dados
const DUMMY_USERS = {
  '1': const User(
      id: '1',
      name: 'A parte que falta ',
      autor: ' Shel Silverstein',
      avatarUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51OaZQkQqUL.jpg'),
  '2': const User(
      id: '2',
      name: 'A parte que falta encontra o grande O ',
      autor: 'Shel Silverstein',
      avatarUrl: 'https://m.media-amazon.com/images/I/61Xkv-q5jJL.jpg'),
  '3': const User(
      id: '3',
      name: 'A Noiva Fantasma ',
      autor: 'Yangsze Choo',
      avatarUrl:
          'https://th.bing.com/th/id/OIP.ECOa6S0PRz5WVOmkIw1ggwHaHa?pid=ImgDet&rs=1'),
  '4': const User(
      id: '4',
      name: 'O Cemitério ',
      autor: 'Stephen King',
      avatarUrl:
          'https://th.bing.com/th/id/R.94d58a0cdb5bde150334612cbb599d1f?rik=dz8ISXJoPq4RZw&riu=http%3a%2f%2fleitorcompulsivo.com.br%2fwp-content%2fuploads%2f2017%2f05%2fO_cemiterio.png&ehk=W5MiresPROvlxO7o4YcUx%2f5A5IDxzk73KFj4lA4wzqY%3d&risl=&pid=ImgRaw&r=0'),
};

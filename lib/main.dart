import 'package:flutter/material.dart';
import 'package:flutter_application_diario/provider/users.dart';
import 'package:flutter_application_diario/routes/app_routes.dart';
import 'package:flutter_application_diario/views/user_form.dart';
import 'package:flutter_application_diario/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (ctx) =>
                Users()), //neste ChangeNotifierProvider o Provider se baseia para notificações
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diário Literario',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}

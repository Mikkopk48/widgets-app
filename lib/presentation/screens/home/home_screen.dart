import 'package:flutter/material.dart';
import 'package:idgets_app/config/menu/menu_items.dart';
import 'package:idgets_app/config/theme/app_theme.dart';
import 'package:idgets_app/presentation/screens/buttons/button_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(
        selectedColor:Provider.of<ThemeSelectionProvider>(context).selectedColor,
        ).getTheme(),
      
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(title: Text("Widgets App"),
        actions: [
          FloatingActionButton.small(
            elevation: 0,
            onPressed: (){
            context.read<ThemeSelectionProvider>().change();
          } ,child: Icon(Icons.change_circle_outlined),)
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final munuItem = appMenuItems[index];
            return ListTile(
              title: Text(munuItem.title),
              subtitle: Text(munuItem.subTitle),
              leading: Icon(munuItem.icon,),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context,munuItem.link
                );
              },
            );
          },
          itemCount: appMenuItems.length,
          ),
      ),
    );
  }
}
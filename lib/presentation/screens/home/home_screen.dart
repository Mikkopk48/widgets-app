import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';


class HomeScreen extends StatelessWidget {
  static const String name = "home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets in flutter")),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    appMenuItems;
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({required this.menuItem});

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.title),
      trailing: const Icon(Icons.arrow_forward_outlined),
      subtitle: Text(menuItem.subTitle),
      leading: Icon(menuItem.icon, color: color.primary),
      onTap: () {
        // Navigator.of(
        //   context,
        // ).push(MaterialPageRoute(builder: (context) => const ButtonsScreen()));
        // Navigator.of(context).pushNamed(menuItem.link);
        context.push(menuItem.link);
        // context.push(CardsScreen.name);
      },
    );
  }
}

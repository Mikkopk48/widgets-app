import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons Screen")),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {}, child: const Text("Eleveted Button")),
              const ElevatedButton(onPressed: null, child: Text("Eleveted Disable")),
              ElevatedButton.icon(onPressed: (){}, label: const Text("Eleveted Icon"),icon: const Icon(Icons.alarm),),
              FilledButton(onPressed: (){}, child: const Text("Filled Button")),
              const FilledButton(onPressed: null, child: Text("Filled Disable")),
              FilledButton.icon(onPressed: (){}, label: const Text("Filled Icon"),icon: const Icon(Icons.alarm),),
              OutlinedButton(onPressed: (){}, child: const Text("OutlinedButton Button")),
              const OutlinedButton(onPressed: null, child: Text("Outlined Button Disable")),
              OutlinedButton.icon(onPressed: (){}, label: const Text("Outlined Button Icon"),icon: const Icon(Icons.alarm),),
              TextButton(onPressed: (){}, child: const Text("TextButton Button Button")),
              const TextButton(onPressed: null, child: Text("TextButton Button Disable")),
              TextButton.icon(onPressed: (){}, label: const Text("Text Button Icon"),icon: const Icon(Icons.alarm),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.account_box),),
              IconButton.filledTonal(onPressed: (){}, icon: const Icon(Icons.account_box),),
              const IconButton(onPressed: null,icon: Icon(Icons.abc)),
              IconButton.filled(
                onPressed: (){},icon: const Icon(Icons.alarm),),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        child:  Material(
        color:colors.primary,
      
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("Hola mundo",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
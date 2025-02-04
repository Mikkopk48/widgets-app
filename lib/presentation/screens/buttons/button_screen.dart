import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Wrap(crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Eleveted')),
            ElevatedButton(onPressed: null, child: Text('Eleveted Disable')),
            ElevatedButton.icon(onPressed:  () {}, 
            icon:Icon(Icons.access_alarm_rounded),
            label:Text('Eleveted Disable')),
            FilledButton(onPressed: (){}, child: Text("Filled")),
            FilledButton.icon(label: Text("Filled Icon"),
              onPressed: (){}, icon: Icon(Icons.switch_access_shortcut_add_outlined)),
              OutlinedButton(onPressed: (){}, child: Text("Outlined")),
              OutlinedButton.icon(onPressed: (){}, label: Text("Outlined Icon"),icon: Icon(Icons.outlet_outlined),),
              TextButton(onPressed: (){}, child:Text('Text')),
              TextButton.icon(onPressed: (){}, label:Text('Text'),icon: Icon(Icons.text_fields_rounded),),
              IconButton(onPressed: (){}, icon: Icon(Icons.app_registration)),
              // IconButton(onPressed: (){},
              //  icon: Icon(Icons.app_registration),
              //  style: ButtonStyle(),)
               CustomButton()
          ],
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.grey,
        child: InkWell(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10), 
          child: Text("data",style: TextStyle(color:Colors.white),),
          ),
        ),
      ),
    );
  }
}
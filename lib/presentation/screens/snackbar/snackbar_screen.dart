import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});
  void showCustomSnackBar(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      backgroundColor: colors.primary,
      content: const Text("Masivo Bro"),
      action: SnackBarAction(label: 'ok', onPressed: () {}),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder:
          (context) =>  AlertDialog(
            title: const Text("Estas seguro?"),
            content: const Text("""
            Lorem ipsum rxd uqejogt cf jxnpod nzrlotwmz yw smgw vg fai vnuakqiwl. 
            Lorem ipsum gkllggzvs jjwhjndlk kxalgo fpde tql aewqwqkbb. Lorem ipsum 
            qhksrhjng mqhpgdkgv iibhewz cblvsqed cakbojxq. Lorem ipsum u z. Lorem 
            ipsum trqpa kuihub bvf iitdetmt fnj qdvgukkkfd. Lorem ipsum sfs k bsrespq
            knmb a wyhi. Lorem ipsum cckaed zcblnoyw sdlnj qjrqya. Lorem ipsum lh wqxly
              ytbqg uugbiwrqjw rrpqigvrwf vustjlszws. Lorem ipsum tilnbkbm oylbtsjsv cj r gqhy. 
              """),
              actions: [
                TextButton(onPressed: (){context.pop();}, child: const Text("Cancelar")),
                FilledButton(onPressed: (){context.pop();}, child: const Text("Aceptar")),
              ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Snackbars and Dialogs")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showLicensePage(
                  context: context,
                  applicationName: 'Mi Aplicación',
                  applicationVersion: '1.0.0',
                  applicationLegalese: '© 2025 Mi Empresa',
                );
              },
              child: const Text("Licencias usadas"),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text("Mostrar dialogo"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackBar(context);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("UI Controls")),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text("Deloper Mode"),
          subtitle: const Text("Controles Adicionales"),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: const Text("Vehiculo de transporte"),
          subtitle: const Text("Transportation.car"),
          children: [
            RadioListTile(
              title: const Text("By Car"),
              subtitle: const Text("Ir en auto"),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.car;
                });
              },
            ),
            RadioListTile(
              title: const Text("By Boat"),
              subtitle: const Text("Ir en barco"),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.boat;
                });
              },
            ),
            RadioListTile(
              title: const Text("By Plane"),
              subtitle: const Text("Ir en avion"),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.plane;
                });
              },
            ),
            RadioListTile(
              title: const Text("By Submarine"),
              subtitle: const Text("Ir en Submarino"),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = Transportation.submarine;
                });
              },
            ),
          ],
        ),
        CheckboxListTile(
        title: const Text("Desayuno?"),
        value: wantsBreakfast, 
        onChanged:(value) => setState(() {
          wantsBreakfast = !wantsBreakfast;
        }),
        ),CheckboxListTile(
        title: const Text("Almuerzo?"),
        value: wantsLunch, 
        onChanged:(value) => setState(() {
          wantsLunch = !wantsLunch;
        }),
        ),CheckboxListTile(
        title: const Text("Cena?"),
        value: wantsDinner, 
        onChanged:(value) => setState(() {
          wantsDinner = !wantsDinner;
        }),
        ),
      ],
    );
  }
}

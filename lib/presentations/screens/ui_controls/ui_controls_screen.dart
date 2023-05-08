import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Controls Bar'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLaunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles de Switch'),
            value: isDeveloper,
            onChanged: (value) => setState(() {
                  isDeveloper = !isDeveloper;
                })),
        ExpansionTile(
          title: const Text('Type of Transport'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
              title: const Text('Car'),
              subtitle: const Text('Select Car as transport'),
            ),
            RadioListTile(
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
              title: const Text('Boat'),
              subtitle: const Text('Select Boat as transport'),
            ),
            RadioListTile(
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    }),
                title: const Text('Plane'),
                subtitle: const Text('Select Plane as transport')),
            RadioListTile(
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarine;
                    }),
                title: const Text('Submarine'),
                subtitle: const Text('Select Submarine as transport')),
          ],
        ),

        CheckboxListTile(
          title: const Text('Do you want Breakfast?'),
          subtitle: const Text('Buffet included'),
          value: wantsBreakfast, 
          onChanged: (value)=>setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),
        CheckboxListTile(
          title: const Text('Do you want Launch?'),
          subtitle: const Text('Criollo Menu included'),
          value: wantsLaunch, 
          onChanged: (value)=>setState(() {
            wantsLaunch = !wantsLaunch;
          })
        ),        
        CheckboxListTile(
          title: const Text('Do you want Dinner?'),
          subtitle: const Text('Glass of wine included'),
          value: wantsDinner, 
          onChanged: (value)=>setState(() {
            wantsDinner = !wantsDinner;
          })
        ),
      ],
    );
  }
}

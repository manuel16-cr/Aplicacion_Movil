import 'package:flutter/material.dart';
import 'package:flutter_application_1/show_input_dialog.dart';

class Datos extends StatelessWidget{
  const Datos({Key? key}) : super(key: key);

  void _updateDisplayName(BuildContext context) async{
    final value = await showInputDialog(context);
    print("$value");
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20,),
        CircleAvatar(
          radius: 75,
          backgroundColor: Colors.blue,
          child: Text('M', style: TextStyle(fontSize: 40.0)
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            "Manuel Contreras",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(child: Text("201810532@tese.edu.mx")),
        const SizedBox(height: 50),
        //const Text("Datos de Usuario"),
        LabelButton(
          label: "Nombre", 
          value: "Manuel Contreras",
          onPressed: () => _updateDisplayName(context),
        ),
        LabelButton(
          label: "Correo Electronico", 
          value: "201810532tese.edu.mx",
          onPressed: () => _updateDisplayName(context),
        ),
        LabelButton(
          label: "Telefono", 
          value: "5553449953",
          onPressed: () => _updateDisplayName(context),
        )
      ],
    );
  }
}


class LabelButton extends StatelessWidget {
  final String label, value;
  final VoidCallback? onPressed;
  const LabelButton({
    Key? key,
    required this.label,
    required this.value,
    this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          leading: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                  ),
                const SizedBox(width: 5),
                Icon(
                  Icons.chevron_right_rounded,
                  size: 22,
                  color: onPressed != null ? Colors.black45: Colors.transparent,
                )
              ],
            ),
        );
  }
}
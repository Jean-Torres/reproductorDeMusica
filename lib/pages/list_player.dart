import 'package:flutter/material.dart';

class ListPlayer extends StatelessWidget {
  const ListPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Tus listas")),
    );
  }
}
















































// import 'package:flutter/material.dart';

// class Music extends StatelessWidget {
//   String variable = "No suscrito";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Music"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           IconButton(
//               onPressed: () {
//                 _seeAlert(context, variable);
//               },
//               icon: Icon(Icons.accessibility_new_sharp)),
//           Text(variable)
//         ],
//       ),
//     );
//   }
// }

// void _seeAlert(BuildContext context, String variable) {
//   showDialog(
//     barrierDismissible: false, // No permite que se cierre la ventana
//     context: context,
//     builder: (context) => AlertDialog(
//       title: const Text("alert"),
//       content: const Text("Como te sientes?"),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text("No"),
//         ),
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text("Si"),
//         ),
//       ],
//     ),
//   );
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MyApp(),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//         ),
//         body: const Padding(
//           padding: EdgeInsets.symmetric(vertical: 50),
//           child: Column(
//             children: [
//               MyContainer(),
//               SizedBox(height: 25),
//               Icon(
//                 Icons.download_for_offline_outlined,
//                 size: 100,
//                 color: Colors.amber,
//               ),
//               Spacer(),
//               Icon(
//                 Icons.download_for_offline_outlined,
//                 size: 100,
//                 color: Colors.amber,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyContainer extends StatelessWidget {
//   const MyContainer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.red,
//         shape: BoxShape.rectangle,
//         border: Border.all(
//           width: 10,
//           color: Colors.black,
//         ),
//         boxShadow: const [
//           BoxShadow(
//             offset: Offset(0, 10),
//             color: Colors.pink,
//             blurRadius: 20,
//             spreadRadius: 10,
//           ),
//         ],
//         gradient: const LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.red,
//             Colors.purple,
//             Colors.black,
//           ],
//         ),
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(25),
//           bottomRight: Radius.circular(25),
//         ),
//       ),
//       height: 380,
//       width: 380,
//     );
//   }
// }


import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: const [ // пишет справа
            Text("Settings"),
            Icon(
              Icons.settings,
            )
          ], // принимает массив из виджетов
          centerTitle: true, // ставит title посередине
          title: const Text("Settings Page"), // title пишет по середине
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          ),
        // слева
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            MyLittleContainer(
              text: "Very Low",
              ),
            MyLittleContainer(
              text: "Low",
              ),
            MyLittleContainer(
              text: "Medium",
              isSelected: true,
              ),
            MyLittleContainer(
              text: "High",
            ),
            MyLittleContainer(
              text: "Very High",
              ),
              // MyContainer(),
              // SizedBox( // устанавливает расстояние между ними 
              //   height: 15,
              // ),
              // Spacer(), // отталкивает виджеты на максимальное расстояние друг от друга
              // MyContainer(),
              
          ]),
        ),
      ),
    );
  }
}

class MyLittleContainer extends StatelessWidget {
  const MyLittleContainer({
    super.key,
    required this.text,
    this.isSelected = false,
    });

    final String text;
    final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected? Colors.green : Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}



class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.pink,
        // borderRadius: BorderRadius.all(
        //   Radius.circular(
        //     25,
        //     ),
        //   ),
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(
        //     40,
        //     ),
        //     bottomRight: Radius.circular(
        //       60,
        //     ),
        // )
        shape: BoxShape.rectangle, // вид виджета, можно сделать круг если вместо квадрата написать круг
        boxShadow: const[
          BoxShadow(
            color: Colors.purple,
            spreadRadius: 10, // толщина тени
            blurRadius: 18, // размытие тени
            offset: Offset(
              -10, 
              10,
            ) // размытие слева направо
          )
        ],
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 10,
          color: Colors.green,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Container(
          color: Colors.black,
          
        ),
      ),
      
    );
  }
}
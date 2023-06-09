import 'package:flutter/material.dart';

class PianoWhiteButton extends StatelessWidget {
  const PianoWhiteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 250,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
          width: 80,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.resolveWith(
              //   (states) {
              //     const Color.fromARGB(255, 255, 255, 255);
              //   },
              // ),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.orange
                    : null;
              }),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'f3',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}















// import 'package:flutter/material.dart';

// class PianoWhiteButton extends StatelessWidget {
//   const PianoWhiteButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(1.0),
//       child: ElevatedButton(
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.resolveWith(
//             (states) {
//               Colors.red;
//             },
//           ),
//           overlayColor: MaterialStateProperty.resolveWith((states) {
//             return states.contains(MaterialState.pressed)
//                 ? Colors.greenAccent
//                 : null;
//           }),
//         ),
//         onPressed: () {},
//         child: const Align(
//           alignment: Alignment.bottomCenter,
//           child: Text(
//             'f3',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

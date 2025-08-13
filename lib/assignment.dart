// import 'package:flutter/material.dart';
//
// class assignment extends StatefulWidget {
//   const assignment({super.key});
//
//   @override
//   State<assignment> createState() => _assignmentState();
// }
//
// class _assignmentState extends State<assignment> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Center(
//         child: Container(
//           height: 850,
//           width: 350,
//           decoration: BoxDecoration(
//             color: Colors.white70,
//             borderRadius: BorderRadius.circular(40)
//           ),
//           child: Column(
//             children: [
//               Container(
//                 height: 60,
//                 width: 350,
//                 decoration: BoxDecoration(
//                   color: Colors.white70,
//                 ),
//                 child: Row(
//                   children: [
//                     Container(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 10),
//                           child: Icon(Icons.person_outline),
//                         )),
//                     Container(
//                       margin: EdgeInsets.only(left: 90),
//                         child: Text("BELIEVER",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize: 20),)),
//                     Container(
//                       margin: EdgeInsets.only(left: 90),
//                         child: Icon(Icons.settings)),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 20),
//                 child: TextFormField(
//                   cursorColor: Colors.black,
//                   keyboardType: TextInputType.text,
//                   decoration: new InputDecoration(
//                     hintStyle: TextStyle(color: Colors.grey),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(18),
//                       borderSide: BorderSide(width: 90),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(18),
//                       borderSide: BorderSide(color: Colors.grey),
//                     ),
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search,color: Colors.grey,),
//                     suffixIcon: Icon(Icons.mic,color: Colors.grey,)
//                     ),
//                   ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 20 ) ,
//                 height: 135,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 image: DecorationImage(image: AssetImage("assets/picture.png"),
//                 fit: BoxFit.cover)
//               ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10),
//                 alignment: Alignment.topLeft  ,
//                 child: Text("Explore",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
//               ),
//               Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(top: 10),
//                     child: Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white70,
//                             borderRadius: BorderRadius.circular(12),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.3),
//                                 spreadRadius: 2,
//                                 blurRadius: 6,
//                                 offset: Offset(0, 4)
//                               )
//                             ]
//                           ),
//                           child: Column(
//                             children: [
//                               ClipRRect(
//                                 borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
//                                 child: Image.asset(
//                                   "assets/sing.png",
//                                   height: 120,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 35,),
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 100,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(12),
//                             image: DecorationImage(image: AssetImage("assets/man23.png"),
//                             fit: BoxFit.cover)
//                           ),
//                         ),
//                         Container(
//                           width: 150,
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.black,width: 0),
//                             borderRadius: BorderRadius.circular(3),
//                           ),
//                           child: Text("DANCING",style: TextStyle(fontWeight: FontWeight.bold),),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
// Row(
//   children: [
//     Container(
//       margin: EdgeInsets.only(top: 20),
//       child:
//       Column(
//         children: [
//           Container(
//             height: 100,
//             width: 150,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               image: DecorationImage(image: AssetImage("assets/img1245.png"),
//               fit: BoxFit.cover)
//             ),
//           ),
//           Container(
//             width: 150,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.black,width: 0),
//               borderRadius: BorderRadius.circular(3),
//             ),
//             child: Text("FITNESS",style: TextStyle(fontWeight: FontWeight.bold),),
//           )
//         ],
//       ),
//     ),
//     Container(
//       child:
//       Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(left:35,top: 10),
//             height: 100,
//             width: 150,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               image: DecorationImage(image: AssetImage('assets/football.png'),
//               fit: BoxFit.cover)
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 10,left: 35),
//             width: 150,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.black,width: 0),
//               borderRadius: BorderRadius.circular(3),
//             ),
//             child: Text("SPORTS",style: TextStyle(fontWeight: FontWeight.bold),),
//           )
//         ],
//       ),
//     )
//   ],
// ),
//               Row(
//                 children: [
//                   Container(
//                     child:
//                     Column(
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(top: 20),
//                           height: 100,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(12),
//                             image: DecorationImage(image: AssetImage("assets/musical.png"),
//                             fit: BoxFit.cover)
//                           ),
//                         ),
//                         Container(
//                           width: 150,
//                           alignment: Alignment.center,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: Colors.black,width: 0),
//                             borderRadius: BorderRadius.circular(3),
//                           ),
//                           child: Text("MUSICAL INSTRUMENT",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

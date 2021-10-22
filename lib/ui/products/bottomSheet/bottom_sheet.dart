// import 'package:eco_app/model/product_model.dart';
// import 'package:flutter/material.dart';



// enum SingingCharacter { lafayette, jefferson }

// class BuildSheet extends StatelessWidget {

  
//    SingingCharacter? _character = SingingCharacter.lafayette;
//   var a = $;
//   late final _ratingController;
//   late double _rating;

//   double _userRating = 4.0;
//   int _ratingBarMode = 1;
//   double _initialRating = 2.0;
//   bool _isRTLMode = false;
//   bool _isVertical = false;

//   IconData? _selectedIcon;

//   static var $;

//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//                                            decoration: const BoxDecoration(
                      
//                           borderRadius: BorderRadius.only(
//           topRight: Radius.circular(60.0),
//           topLeft: Radius.circular(60.0)),),
//                                          child:  Column(
//                                            crossAxisAlignment: CrossAxisAlignment.start,
//                                                       children: <Widget>[
//                                                         Text(product[index].product_name,
//                                                       style:   TextStyle(
//                             fontSize: 20,
//                             color: Colors.black87,
//                             fontWeight: FontWeight.w500)),
                           
//                             Text("refliable"),
//                              Divider(thickness: 2,
//                             color: Colors.grey,),
//                             Text("Select any one"),
//                           Column( children: [

//                               ListTile(
//           title:  Text('With Container'),
//           subtitle: Text("Aluminium"),
//           leading: Radio<SingingCharacter>(
//             value: SingingCharacter.lafayette,
//             groupValue: _character,
//             onChanged: (SingingCharacter? value) {
//               setState(() {
//                 _character = value;
//               });
//             },
//           ),
//         ),
//          ListTile(
//           title:  Text('Without Container'),
//           leading: Radio<SingingCharacter>(
//             value: SingingCharacter.jefferson,
//             groupValue: _character,
//             onChanged: (SingingCharacter? value) {
//               setState(() {
//                 _character = value;
//               });
//             },
//           ),
//         ),
                            
//                           ],
                            
//                           ),
//                              Row(
//                                 mainAxisAlignment:MainAxisAlignment.center,
//                                children: [
                                
//                                  Container(
//                           height: 45,
//                           child: FittedBox(
//                             child: TextButton(
//                                   style: ButtonStyle(
//                                       foregroundColor:
//                                         MaterialStateProperty.all<Color>(
//                                                 Colors.white),
//                                       backgroundColor:
//                                         MaterialStateProperty.all<Color>(
//                                                 kCustomButtomColor),
//                                       shape: MaterialStateProperty.all<
//                                                 RoundedRectangleBorder>(
//                                         RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(4),
//                                       ))),
//                                   onPressed: () {},
//                                   child: Text("ADD"),))),
//                                ],
//                              ),
                                                        
                                                       
                                                     
                                                      
//                                                       ],
//                                                     ),
                                                  
//                                                 );
//   }
// }
 

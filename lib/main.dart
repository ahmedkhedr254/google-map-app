import 'package:flutter/material.dart';

import 'Pages/home.dart';
main(){
  return runApp(app());
}
class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home: home(),
     );
  }

}
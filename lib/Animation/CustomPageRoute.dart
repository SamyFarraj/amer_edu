
import 'package:flutter/cupertino.dart';

class CustomePageRoute extends PageRouteBuilder{
  final Widget child;

  CustomePageRoute({
    required this.child
}) : super(
    transitionDuration:Duration(milliseconds: 500) ,
    pageBuilder: (context ,animation,secondryAnumation)=>child,

  );
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child)=>
        SlideTransition(position: Tween<Offset>(
begin: Offset(-1,0),
          end: Offset.zero
        ).animate(animation),child: child,
        );
/*
      ScaleTransition(scale:animation ,
      child: child,);

 */
}
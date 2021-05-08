import 'package:flutter/material.dart';
//stateless widgets are immutable -> properties set once and it stays the same, if we want to change something we have to destroy and make another one.
//--------------------//
//const vs final
//const can't have access anything during runtime
//final is the value after compilation, for example Datetime.now()

//we used final here, bacause colour can be anytime, app running or after compilation,

class ReusableCard extends StatelessWidget {
  // const ReusableCard({Key key}) : super(key: key);
  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.onPress}); //if we want to refer the name of this property {} is used, cardChild is optional
  final Color
      colour; //final makes this property immutable meanning that after creating, we cant change it again
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          // color: activeCardColor,
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

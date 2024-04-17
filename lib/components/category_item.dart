import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   Category({this.text, this.color , this.ontap});
  final Color? color;
  final String? text;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        color: color ??
            Colors
                .transparent, // تأكد من توفير قيمة افتراضية إذا كانت القيمة تحتوي على null
        child: Text(
        
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

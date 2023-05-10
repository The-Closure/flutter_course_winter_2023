// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  String titleOfTheButton;

  dynamic methodology;

  GreyButton({
    Key? key,
    required this.titleOfTheButton,
    required this.methodology,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: methodology,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 10, 22, 14),
          child: Container(
            height: 54,
            width: 317,
            child: Center(
              child: Text(
                titleOfTheButton,
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.lightBlue[200],
                border: Border.all(),
                borderRadius: BorderRadius.circular(20)),
          ),
        ));
  }
}

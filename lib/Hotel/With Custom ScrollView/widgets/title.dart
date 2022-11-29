import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  final String title;
  final bool? button;
  final String? buttonText;
  final VoidCallback? onPressed;
  const TitleCustom({
    Key? key,
    required this.title,
    this.button = false,
    this.buttonText = '',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          button!
              ? TextButton(
                  onPressed: onPressed,
                  child: Text(
                    buttonText!,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

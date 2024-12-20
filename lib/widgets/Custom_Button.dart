import 'package:flutter/material.dart';

import 'Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
        child: Center(
            child: isLoading
                ? const SizedBox(height: 24,width: 24,child: CircularProgressIndicator(color: Colors.black,))
                : const Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
                  )),
      ),
    );
  }
}

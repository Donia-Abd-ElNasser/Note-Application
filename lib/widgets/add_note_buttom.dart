import 'package:flutter/material.dart';

import 'package:noteapp/widgets/Custom_Button.dart';
import 'package:noteapp/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            CustomTextField(hint:'Title'),
          CustomTextField(hint:'Notes',maxLines: 5,),
          CustomButton()
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phoenix/configs/configs.dart';
import 'package:flutter_phoenix/models/sections/kontak_section.dart';
import 'package:flutter_phoenix/screens/section_edit/section_edit_page.dart';
import 'package:flutter_phoenix/widgets/base_raised_button.dart';
import 'package:flutter_phoenix/widgets/custom/custom_text.dart';
import 'package:flutter_phoenix/widgets/normal_form_field.dart';

class SectionKontakEditPage extends SectionEditPage {
  SectionKontakEditPage({this.kontak});

  KontakSection? kontak;

  @override
  Widget formView(BuildContext context) {
    FocusNode _nameFocusNode = FocusNode();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 5),
        const CustomText(
          'Nama Lengkap',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        NormalFormField(
          hintText: "ex. Budi Gunawan",
          text: kontak?.name ?? "",
          focusNode: _nameFocusNode,
          onFieldSubmitted: (value) {
            _nameFocusNode.unfocus();
            // FocusScope.of(context).requestFocus(_emailFocusNode);
          },
          // onChanged: (value) {
          //   _registerData.name = value;
          // },
          validator: (value) => kontak!.nameValidator(),
        ),
        const SizedBox(height: 45),
        Center(
          child: SizedBox(
            height: 50,
            child: BaseRaisedButton(
              ratio: 1 / 1.25,
              onPressed: () {},
              color: Configs.secondaryColor,
              child: const Text(
                "DAFTAR",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payuung_pribadi/constant/style/color.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    this.textInputAction,
    this.id,
    this.controller,
    this.onTap,
    this.onFieldSubmitted,
    this.hint,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.errorText,
    this.counter = const Offstage(),
    this.onChanged,
    this.initialValue,
    this.readOnly = false,
    this.useBorder = true,
    this.textStyle = const TextStyle(),
    this.label = '',
  }) : super(key: key);
  final String label;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onFieldSubmitted;
  final String? id;
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? counter;
  final int? maxLines;
  final int? maxLength;
  final TextAlign? textAlign;
  final TextInputType? keyboardType;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String? initialValue;
  final bool readOnly;
  final String? errorText;
  final TextStyle? textStyle;
  final bool useBorder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            label,
          ),
        ),
        TextFormField(
          textInputAction: textInputAction,
          controller: controller,
          maxLines: maxLines,
          maxLength: maxLength,
          textAlign: textAlign!,
          keyboardType: keyboardType,
          obscureText: obscureText,
          validator: validator,
          initialValue: initialValue,
          readOnly: readOnly,
          decoration: InputDecoration(
            errorStyle: const TextStyle(color: MyColor.yellowColor),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: MyColor.yellowColor, width: 1),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: MyColor.yellowColor, width: 1),
            ),
            border: (useBorder)
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Colors.grey),
                  )
                : InputBorder.none,
            errorText: errorText,
            counter: counter,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: (useBorder)
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Colors.grey),
                  )
                : null,
            contentPadding: const EdgeInsets.all(8),
            fillColor: Colors.white,
            filled: true,
            hintText: hint,
            // hintStyle: MyTextStyle.captionGrey12,
          ),
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          // style: MyTextStyle.captionBlack12,
        ),
      ],
    );
  }
}

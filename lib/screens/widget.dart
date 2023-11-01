import 'package:flutter/material.dart';
import 'package:medical_app/models/colors/MyColors.dart';

//navigation helper
class NavigationHelper {
  static void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

//styles
TextStyle kTitleStyle = TextStyle(
  color: Color(MyColors.header01),
  fontWeight: FontWeight.bold,
);

TextStyle kFilterStyle = TextStyle(
  color: Color(MyColors.bg02),
  fontWeight: FontWeight.w500,
);

//small text

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight? fontWeight;
  TextAlign? align;
  TextDecoration? decoration;
  SmallText({
    super.key,
    this.align,
    this.color = const Color(0xFF332d2d),
    required this.text,
    decoration = TextDecoration.none,
    this.size = 15,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

//big text

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText({
    super.key,
    this.color = const Color(0xFF332d2d),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style:
          TextStyle(color: color, fontWeight: FontWeight.w500, fontSize: size),
    );
  }
}

//text Editing view
class TextEditView extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final Color? fillColor;
  final GestureTapCallback? onTap;
  final String? labelText;
  final String? textViewTitle;
  final String? hintText;
  final bool readOnly;
  final bool autofocus;
  final bool autocorrect;
  final bool obscureText;
  final double borderRadius;
  final double borderWidth;
  final bool isDense;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? borderColor;
  final int? maxLines;
  final int? maxLength;
  final bool filled;
  final String? prefixText;
  final String? helperText;
  final Color? iconColor;
  final Color? textColor;
  final Iterable<String>? autofillHints;
  final FocusNode? focusNode;
  const TextEditView(
      {Key? key,
      this.onChanged,
      required this.controller,
      this.fillColor,
      this.onTap,
      this.keyboardType,
      this.textInputAction,
      this.validator,
      this.readOnly = false,
      this.autofocus = false,
      this.autocorrect = false,
      this.obscureText = false,
      this.isDense = false,
      this.labelText,
      this.hintText,
      this.onFieldSubmitted,
      this.borderRadius = 8.0,
      this.borderWidth = 1.5,
      this.suffixIcon,
      this.iconColor,
      this.textColor,
      this.prefixIcon,
      this.borderColor,
      this.filled = true,
      this.prefixText,
      this.autofillHints,
      this.focusNode,
      this.helperText,
      this.maxLength,
      this.maxLines = 1,
      this.textViewTitle = ''})
      : super(key: key);

  OutlineInputBorder _border(BuildContext context) => OutlineInputBorder(
      borderSide: BorderSide(
          width: borderWidth,
          color: borderColor ?? Theme.of(context).shadowColor.withOpacity(0.1),
          style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)));

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.secondary)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            validator: validator,
            onChanged: onChanged,
            onTap: onTap,
            autocorrect: autocorrect,
            readOnly: readOnly,
            autofocus: autofocus,
            obscureText: obscureText,
            maxLines: maxLines,
            maxLength: maxLength,
            autofillHints: autofillHints,
            onFieldSubmitted: onFieldSubmitted,
            focusNode: focusNode,
            style: TextStyle(color: textColor),
            decoration: InputDecoration(
                border: _border(context),
                enabledBorder: _border(context),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                        width: borderWidth,
                        color: MyColors.primaryColor,
                        style: BorderStyle.solid)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    borderSide: BorderSide(
                        width: borderWidth,
                        color: borderColor ??
                            Theme.of(context).colorScheme.secondary,
                        style: BorderStyle.solid)),
                errorBorder: _border(context),
                disabledBorder: _border(context),
                hintText: hintText,
                hintStyle: TextStyle(color: textColor, fontSize: 14),
                labelText: labelText,
                labelStyle: TextStyle(
                  color: MyColors.primaryColor,
                ),
                filled: filled,
                isDense: isDense,
                fillColor: fillColor ??
                    Theme.of(context).shadowColor.withOpacity(0.05),
                helperText: helperText,
                helperMaxLines: 2,
                helperStyle: const TextStyle(fontSize: 10),
                prefixText: prefixText,
                prefixIcon: prefixIcon,
                iconColor: iconColor,
                prefixIconColor: iconColor,
                suffixIcon: suffixIcon,
                suffixIconColor: MyColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
Widget profileCard(String title, String trailing) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(trailing),
      ],
    ),
  );
}
import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class AuthenticationTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool? hasSuffixIcon;
  final VoidCallback? suffixIconOnTapFunction;
  final bool? suffixIconState;
  final bool? isHideText;
  const AuthenticationTextFieldWidget({
    super.key,
    required this.controller,
    this.hintText,
    this.hasSuffixIcon,
    this.suffixIconOnTapFunction,
    this.suffixIconState,
    this.isHideText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: context.borderRadiusNormal,
        color: context.colors.primary.withOpacity(0.4),
      ),
      child: Padding(
        padding:
            context.paddingLowHorizontal + context.paddingLowVertical * 0.5,
        child: TextFormField(
          controller: controller,
          obscureText: isHideText ?? false,
          decoration: InputDecoration(
            suffixIcon: hasSuffixIcon != null && hasSuffixIcon!
                ? GestureDetector(
                    onTap: suffixIconOnTapFunction,
                    child: Icon(
                      suffixIconState ?? false
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: context.colors.onBackground,
                    ),
                  )
                : null,
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}

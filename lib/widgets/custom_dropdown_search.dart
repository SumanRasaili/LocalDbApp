import 'package:firestoreapp/utils/colors.dart';
import 'package:firestoreapp/widgets/dropdown_value_model.dart';
import 'package:flutter/material.dart';

typedef DropDownValueFunction = void Function(String?);

class CustomDropDown extends StatefulWidget {
  const CustomDropDown(
      {Key? key,
      required this.options,
      required this.dropDownValueFunction,
      this.initialValue,
      this.value,
      this.icon,
      this.validator,
      required this.hintText,
      required this.labelText,
      this.iconSize,
      this.borderRadius,
      this.isRequired = false})
      : super(key: key);
  final List<DropdownValueModel> options;
  final DropDownValueFunction dropDownValueFunction;
  final String? initialValue;
  final String? value;
  final IconData? icon;
  final String hintText;
  final double? iconSize;
  final double? borderRadius;
  final String labelText;
  final bool isRequired;
  final String? Function(String?)? validator;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText.isNotEmpty) ...[
          Row(
            children: [
              Text(widget.labelText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColors.labelTextColor)),
              widget.isRequired
                  ? const Text(
                      ' *',
                      style: TextStyle(color: AppColors.redColor),
                    )
                  : const SizedBox.shrink()
            ],
          ),
          const SizedBox(
            height: 5,
          )
        ],
        DropdownButtonFormField<String>(
          enableFeedback: true,
          value: widget.initialValue,
          selectedItemBuilder: (context) => widget.options
              .map((e) => Text(
                    e.value,
                    style: const TextStyle(
                      color: AppColors.black2cColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ))
              .toList(),

          // style: TextStyle(),
          // iconDisabledColor: AppColor.midBlue,

          isExpanded: true,
          // isDense: true,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.labelTextColor,
          ),

          decoration: InputDecoration(
            // isDense: false,
            prefixIcon: (widget.icon != null)
                ? Icon(
                    widget.icon,
                    size: widget.iconSize ?? 20,
                    color: Colors.black54,
                  )
                : null,
            disabledBorder: const UnderlineInputBorder(
                borderSide:
                    BorderSide(width: 0.7, color: AppColors.textFillColor)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: AppColors.hintTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 6.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 6.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.borderColor),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 6.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.redColor),
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 6.0),
            ),
          ),
          elevation: 1,
          borderRadius: BorderRadius.circular(6.0),

          validator: widget.validator,

          items: widget.options.map((e) {
            return DropdownMenuItem(
                alignment: AlignmentDirectional.topStart,
                value: e.key,
                child: ListTile(
                  title: Text(
                    e.value,
                    style: const TextStyle(
                      color: AppColors.black2cColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ));
          }).toList(),
          onChanged: (newValue) {
            widget.dropDownValueFunction.call(newValue as String);
          },
        ),
      ],
    );
  }
}

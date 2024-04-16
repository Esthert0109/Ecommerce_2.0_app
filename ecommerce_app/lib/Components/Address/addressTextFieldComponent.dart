import 'package:flutter/material.dart';
import '../../Constants/colorConstants.dart';
import '../../Constants/textConstants.dart';
import 'package:flutter_svg/flutter_svg.dart';

final TextEditingController nameController = TextEditingController();
final TextEditingController phoenController = TextEditingController();
final TextEditingController addressController = TextEditingController();
final TextEditingController cityController = TextEditingController();
final TextEditingController stateController = TextEditingController();
final TextEditingController codeController = TextEditingController();

class AddressTextFieldComponent extends StatefulWidget {
  AddressTextFieldComponent({super.key});

  @override
  State<AddressTextFieldComponent> createState() =>
      _AddressTextFieldComponentState();
}

class _AddressTextFieldComponentState extends State<AddressTextFieldComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTextFormField("收货人名称", nameIcon, nameController),
        SizedBox(height: 10),
        _buildTextFormField("手机号码", phoneIcon, phoenController),
        SizedBox(height: 10),
        _buildTextFormField("地址", addressIcon, addressController),
        SizedBox(height: 10),
        _buildTextFormField("城市", cityIcon, cityController),
        SizedBox(height: 10),
        _buildTextFormField("州属", stateIcon, stateController),
        SizedBox(height: 10),
        _buildTextFormField("邮政编码", codeIcon, codeController),
        SizedBox(height: 10),
      ],
    );
  }
}

Widget _buildTextFormField(
    String hintText, String svgIcon, TextEditingController? controller) {
  return Container(
      height: 43,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: kMainWhiteColor),
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 5),
            hintText: hintText,
            hintStyle: tAddressPhoneText,
            filled: true,
            fillColor: kMainWhiteColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
            prefixIcon: SvgPicture.string(
              svgIcon,
            ),
          )));
}

final String nameIcon =
    '''<svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5 25.5789C20.171 25.5789 25.5789 20.171 25.5789 13.5C25.5789 6.82898 20.171 1.42105 13.5 1.42105C6.82898 1.42105 1.42105 6.82898 1.42105 13.5C1.42105 20.171 6.82898 25.5789 13.5 25.5789ZM13.5 27C20.9558 27 27 20.9558 27 13.5C27 6.04416 20.9558 0 13.5 0C6.04416 0 0 6.04416 0 13.5C0 20.9558 6.04416 27 13.5 27Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.4998 7.81558C12.715 7.81558 12.0788 8.45181 12.0788 9.23664C12.0788 10.0215 12.715 10.6577 13.4998 10.6577C14.2846 10.6577 14.9209 10.0215 14.9209 9.23664C14.9209 8.45181 14.2846 7.81558 13.4998 7.81558ZM10.6577 9.23664C10.6577 7.66699 11.9302 6.39453 13.4998 6.39453C15.0695 6.39453 16.3419 7.66699 16.3419 9.23664C16.3419 10.8063 15.0695 12.0787 13.4998 12.0787C11.9302 12.0787 10.6577 10.8063 10.6577 9.23664Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M18.4736 15.632H8.52619C7.74136 15.632 7.10513 16.2682 7.10513 17.053C7.10513 17.8379 7.74136 18.4741 8.52619 18.4741H18.4736C19.2584 18.4741 19.8946 17.8379 19.8946 17.053C19.8946 16.2682 19.2584 15.632 18.4736 15.632ZM8.52619 14.2109C6.95654 14.2109 5.68408 15.4834 5.68408 17.053C5.68408 18.6227 6.95654 19.8951 8.52619 19.8951H18.4736C20.0432 19.8951 21.3157 18.6227 21.3157 17.053C21.3157 15.4834 20.0432 14.2109 18.4736 14.2109H8.52619Z" fill="#999999"/>
</svg>
''';
final String phoneIcon =
    '''<svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5 25.5789C20.171 25.5789 25.5789 20.171 25.5789 13.5C25.5789 6.82898 20.171 1.42105 13.5 1.42105C6.82898 1.42105 1.42105 6.82898 1.42105 13.5C1.42105 20.171 6.82898 25.5789 13.5 25.5789ZM13.5 27C20.9558 27 27 20.9558 27 13.5C27 6.04416 20.9558 0 13.5 0C6.04416 0 0 6.04416 0 13.5C0 20.9558 6.04416 27 13.5 27Z" fill="#999999"/>
<path d="M14.637 17.4786C14.637 18.1065 14.128 18.6155 13.5001 18.6155C12.8723 18.6155 12.3633 18.1065 12.3633 17.4786C12.3633 16.8508 12.8723 16.3418 13.5001 16.3418C14.128 16.3418 14.637 16.8508 14.637 17.4786Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M17.0528 7.10465H9.94757C9.16275 7.10465 8.52652 7.74087 8.52652 8.5257V18.4731C8.52652 19.2579 9.16275 19.8941 9.94757 19.8941H17.0528C17.8377 19.8941 18.4739 19.2579 18.4739 18.4731V8.5257C18.4739 7.74087 17.8377 7.10465 17.0528 7.10465ZM9.94757 5.68359C8.37792 5.68359 7.10547 6.95605 7.10547 8.5257V18.4731C7.10547 20.0427 8.37792 21.3152 9.94757 21.3152H17.0528C18.6225 21.3152 19.8949 20.0427 19.8949 18.4731V8.5257C19.8949 6.95605 18.6225 5.68359 17.0528 5.68359H9.94757Z" fill="#999999"/>
</svg>
''';

final String addressIcon =
    '''<svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5 25.5789C20.171 25.5789 25.5789 20.171 25.5789 13.5C25.5789 6.82898 20.171 1.42105 13.5 1.42105C6.82898 1.42105 1.42105 6.82898 1.42105 13.5C1.42105 20.171 6.82898 25.5789 13.5 25.5789ZM13.5 27C20.9558 27 27 20.9558 27 13.5C27 6.04416 20.9558 0 13.5 0C6.04416 0 0 6.04416 0 13.5C0 20.9558 6.04416 27 13.5 27Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M14.2107 7.10465H9.94757C9.16275 7.10465 8.52652 7.74087 8.52652 8.5257V18.4731C8.52652 19.2579 9.16275 19.8941 9.94757 19.8941H15.6318V8.5257C15.6318 7.74087 14.9956 7.10465 14.2107 7.10465ZM9.94757 5.68359C8.37792 5.68359 7.10547 6.95605 7.10547 8.5257V18.4731C7.10547 20.0427 8.37792 21.3152 9.94757 21.3152H17.0528V8.5257C17.0528 6.95605 15.7804 5.68359 14.2107 5.68359H9.94757Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M19.8945 18.4744V14.2112C19.8945 13.4264 19.2583 12.7902 18.4735 12.7902C17.6886 12.7902 17.0524 13.4264 17.0524 14.2112V19.8955H18.4735C19.2583 19.8955 19.8945 19.2592 19.8945 18.4744ZM18.4735 11.3691C16.9038 11.3691 15.6313 12.6416 15.6313 14.2112V21.3165H18.4735C20.0431 21.3165 21.3156 20.0441 21.3156 18.4744V14.2112C21.3156 12.6416 20.0431 11.3691 18.4735 11.3691Z" fill="#999999"/>
<path d="M9.94727 10.6578C9.94727 10.2654 10.2654 9.94727 10.6578 9.94727H13.4999C13.8923 9.94727 14.2104 10.2654 14.2104 10.6578C14.2104 11.0502 13.8923 11.3683 13.4999 11.3683H10.6578C10.2654 11.3683 9.94727 11.0502 9.94727 10.6578Z" fill="#999999"/>
<path d="M9.94727 14.9215C9.94727 14.5291 10.2654 14.2109 10.6578 14.2109H13.4999C13.8923 14.2109 14.2104 14.5291 14.2104 14.9215C14.2104 15.3139 13.8923 15.632 13.4999 15.632H10.6578C10.2654 15.632 9.94727 15.3139 9.94727 14.9215Z" fill="#999999"/>
</svg>
''';
final String cityIcon =
    '''<svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5 25.5789C20.171 25.5789 25.5789 20.171 25.5789 13.5C25.5789 6.82898 20.171 1.42105 13.5 1.42105C6.82898 1.42105 1.42105 6.82898 1.42105 13.5C1.42105 20.171 6.82898 25.5789 13.5 25.5789ZM13.5 27C20.9558 27 27 20.9558 27 13.5C27 6.04416 20.9558 0 13.5 0C6.04416 0 0 6.04416 0 13.5C0 20.9558 6.04416 27 13.5 27Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M6.39461 12.0781C6.78702 12.0781 7.10513 12.3962 7.10513 12.7887V17.4619L10.1013 16.3833C10.2868 16.3165 10.4916 16.3298 10.6669 16.4199L15.8889 19.1055L19.8946 17.3029V12.7887C19.8946 12.3962 20.2127 12.0781 20.6051 12.0781C20.9975 12.0781 21.3157 12.3962 21.3157 12.7887V17.7623C21.3157 18.0419 21.1517 18.2955 20.8967 18.4103L16.1599 20.5419C15.9626 20.6306 15.7357 20.6247 15.5433 20.5258L10.2919 17.825L6.63528 19.1414C6.41758 19.2198 6.17535 19.1872 5.98605 19.0542C5.79674 18.9211 5.68408 18.7042 5.68408 18.4729V12.7887C5.68408 12.3962 6.0022 12.0781 6.39461 12.0781Z" fill="#999999"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.1644 13.4203C13.2754 13.5313 13.4554 13.5313 13.5664 13.4203L15.2741 11.7126C16.9745 10.0122 15.7702 7.10465 13.3654 7.10465C10.9606 7.10465 9.75628 10.0122 11.4567 11.7126L13.1644 13.4203ZM13.5664 15.43C13.4554 15.541 13.2754 15.541 13.1644 15.43L10.4519 12.7174C7.85623 10.1218 9.69459 5.68359 13.3654 5.68359C17.0362 5.68359 18.8746 10.1218 16.2789 12.7174L13.5664 15.43Z" fill="#999999"/>
</svg>
''';
final String stateIcon =
    '''<svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5 25.5789C20.171 25.5789 25.5789 20.171 25.5789 13.5C25.5789 6.82898 20.171 1.42105 13.5 1.42105C6.82898 1.42105 1.42105 6.82898 1.42105 13.5C1.42105 20.171 6.82898 25.5789 13.5 25.5789ZM13.5 27C20.9558 27 27 20.9558 27 13.5C27 6.04416 20.9558 0 13.5 0C6.04416 0 0 6.04416 0 13.5C0 20.9558 6.04416 27 13.5 27Z" fill="#999999"/>
<circle cx="13.5" cy="13.5" r="7.75" stroke="#999999" stroke-width="1.5"/>
<path d="M21 14H6" stroke="#999999" stroke-width="1.5"/>
<path d="M13 6C16.0185 8.16667 20.2444 14.2 13 21" stroke="#999999" stroke-width="1.5"/>
<path d="M14 6C10.9815 8.16667 6.75561 14.2 14 21" stroke="#999999" stroke-width="1.5"/>
</svg>
''';
final String codeIcon =
    '''<svg width="27" height="27" viewBox="0 0 27 27" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M13.5 25.5789C20.171 25.5789 25.5789 20.171 25.5789 13.5C25.5789 6.82898 20.171 1.42105 13.5 1.42105C6.82898 1.42105 1.42105 6.82898 1.42105 13.5C1.42105 20.171 6.82898 25.5789 13.5 25.5789ZM13.5 27C20.9558 27 27 20.9558 27 13.5C27 6.04416 20.9558 0 13.5 0C6.04416 0 0 6.04416 0 13.5C0 20.9558 6.04416 27 13.5 27Z" fill="#999999"/>
<rect x="7.75" y="8.75" width="11.5" height="9.5" rx="1.25" stroke="#999999" stroke-width="1.5"/>
<path d="M16 12L14.75 12.5L13.5 13L11 12" stroke="#999999" stroke-width="1.5" stroke-linecap="round"/>
</svg>

''';

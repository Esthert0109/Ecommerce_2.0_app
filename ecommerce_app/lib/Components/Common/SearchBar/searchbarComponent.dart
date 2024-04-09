import 'dart:ui';
import 'package:ecommerce_app/Pages/Examples/searchResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class SearchBarComponent extends StatefulWidget {
  final bool isExpore;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;

  SearchBarComponent({
    Key? key,
    required this.isExpore,
    this.initialValue,
    this.onChanged,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  State<SearchBarComponent> createState() => _SearchBarComponentState();
}

class _SearchBarComponentState extends State<SearchBarComponent> {
  final TextEditingController searchController = TextEditingController();

  String search = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Container(
          child: widget.isExpore
              ? TextFormField(
                  initialValue: widget.initialValue,
                  onChanged: widget.onChanged != null
                      ? widget.onChanged
                      : (value) {
                          setState(() {
                            search = value;
                          });
                        },
                  onFieldSubmitted: widget.onFieldSubmitted,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: kAppbarBackgroundColor,
                    hintText: AppLocalizations.of(context)!.searchHint,
                    hintStyle: tInputFieldText,
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: kMainWhiteColor, width: 3),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: kMainBlackColor,
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        color: kMainWhiteColor,
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          if (search != null && search.isNotEmpty) {
                            print(search);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SearchResultPage(searchQuery: search),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                )
              : Row(
                  children: [
                    SizedBox(
                      width: 28,
                      child: IconButton(
                        padding: const EdgeInsets.only(right: 10, bottom: 1.5),
                        color: Colors.black,
                        icon: const Icon(Icons.arrow_back_ios_outlined),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Flexible(
                      child: TextFormField(
                        initialValue: widget.initialValue,
                        onChanged: widget.onChanged != null
                            ? widget.onChanged
                            : (value) {
                                setState(() {
                                  search = value;
                                });
                              },
                        onFieldSubmitted: widget.onFieldSubmitted,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: kAppbarBackgroundColor,
                          hintText: AppLocalizations.of(context)!.searchHint,
                          hintStyle: tInputFieldText,
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: kMainBlackColor, width: 3),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          suffixIcon: Container(
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: kMainBlackColor,
                            ),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              color: Colors.white,
                              icon: const Icon(Icons.search),
                              onPressed: () {
                                if (search != null && search.isNotEmpty) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          SearchResultPage(searchQuery: search),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/menu/filtermm.png"),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
    );
  }
}

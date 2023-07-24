import 'package:assessment/constant/colors.dart';
import 'package:assessment/constant/language_constant.dart';
import 'package:assessment/main.dart';
import 'package:assessment/models/languages.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatefulWidget {
  final bool? boolean;
  final String? imageUrl;

  const AuthHeader({Key? key, this.boolean, this.imageUrl}) : super(key: key);

  @override
  State<AuthHeader> createState() => _AuthHeaderState();
}

class _AuthHeaderState extends State<AuthHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: widget.boolean == true
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            widget.boolean == true
                ? IconButton(
                    alignment: Alignment.topLeft,
                    icon: const Icon(Icons.arrow_back, size: 30),
                    tooltip: 'Increase volume by 10',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                : Padding(
                    padding: EdgeInsets.only(right: defPadding / 2.5),
                    child: DropdownButton<Language>(
                      underline: const SizedBox(),
                      icon: Image.asset(
                        "assets/images/flag.png",
                        height: 40,
                      ),
                      onChanged: (Language? language) async {
                        if (language != null) {
                          Locale _locale =
                              await setLocale(language.languageCode);
                          MyApp.setLocale(context, _locale);
                        }
                      },
                      items: Language.languageList()
                          .map<DropdownMenuItem<Language>>(
                            (e) => DropdownMenuItem<Language>(
                              value: e,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    e.flag,
                                    style: const TextStyle(fontSize: 30),
                                  ),
                                  Text(e.name)
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    // child: Image.asset("assets/images/flag.png",height: 40,),
                  ),
          ],
        ),
        SizedBox(
          height: defPadding * 2,
        ),
        Center(
            child: Image.asset(
          widget.imageUrl!,
          height: 160,
        )),
      ],
    );
  }
}

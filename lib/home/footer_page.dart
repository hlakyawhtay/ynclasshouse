import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(51),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.start,
        runAlignment: WrapAlignment.start,
        runSpacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'images/svgs/🦆 icon _copyright_.svg',
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 12,
              ),
              AutoSizeText(
                '2023 YN CLASSHOUSE',
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'images/svgs/🦆 icon _phone_.svg',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AutoSizeText(
                    '09 792 571265',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'images/svgs/🦆 icon _mail_.svg',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  AutoSizeText(
                    'info@ynclasshouse.com',
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),

          ///

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('https://www.facebook.com/YNClasshouse'));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'images/svgs/FB Logo.svg',
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      'ynclasshouse',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'images/svgs/🦆 icon _pin alt_.svg',
                    width: 32,
                    height: 32,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    adds,
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

const adds = '''
University Road Hinthada
Ayeyarwady Region
Myanmar
''';

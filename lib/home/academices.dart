import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ynclasshouse/consts/colors.dart';

class Academices extends StatelessWidget {
  final bool isMobile;
  const Academices({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 1410,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 51,
            ),
            Container(
              margin: EdgeInsets.only(left: isMobile ? 21 : 51),
              child: Text(
                'ACADEMIC',
                style: TextStyle(
                    fontSize: isMobile ? 24 : 32,
                    fontFamily: 'Poirate',
                    color: kPromaryColor),
              ),
            ),
            if (isMobile) ...{
              const SizedBox(
                height: 21,
              )
            } else ...{
              const SizedBox(
                height: 51,
              ),
            },
            Container(
              color: Colors.white.withOpacity(0.67),
              width: double.infinity,
              padding: isMobile
                  ? const EdgeInsets.all(21)
                  : const EdgeInsets.all(51),
              margin: isMobile
                  ? const EdgeInsets.all(21)
                  : const EdgeInsets.all(51),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AutoSizeText(
                      'Our Classes',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      width: 168,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF17594A),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 0.75, color: Color(0xFF17594A)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        AutoSizeText(
                          'Oxford Phonics Classes',
                          overflow: TextOverflow.ellipsis,
                          stepGranularity: 3,
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF17594A),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 0.75, color: Color(0xFF17594A)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            'Preperation for Cambridge English Qualifications Exams',
                            stepGranularity: 3,
                            textScaleFactor: 1,
                            softWrap: true,
                            maxLines: 3,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF17594A),
                            shape: OvalBorder(
                              side: BorderSide(
                                  width: 0.75, color: Color(0xFF17594A)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            'Cambridge International Curriculum (Math, English, Science)',
                            maxLines: 3,
                            stepGranularity: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.asset(
                            'images/pngs/leven One.jpeg',
                            width: 190,
                            height: 190,
                          ),
                          Image.asset(
                            'images/pngs/level two.jpeg',
                            width: 190,
                            height: 190,
                          ),
                          Image.asset(
                            'images/pngs/one.png',
                            width: 190,
                            height: 190,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'images/pngs/two.png',
                            width: 190,
                            height: 190,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'images/pngs/three.png',
                            width: 190,
                            height: 190,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'images/pngs/four.png',
                            width: 190,
                            height: 190,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 51,
                    ),
                    AutoSizeText(
                      'Date & Time',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      width: 174,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('images/svgs/🦆 icon _alarm_.svg'),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            'Friday    - ( 5-PM To 6-PM )',
                            stepGranularity: 3,
                            maxLines: 2,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/svgs/🦆 icon _alarm_.svg'),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            'Sat/Sun - ( 4:30-PM To 6-PM )',
                            stepGranularity: 3,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/svgs/🦆 icon _alarm_.svg'),
                        const SizedBox(
                          width: 12,
                        ),
                        AutoSizeText(
                          '3 days in a week',
                          stepGranularity: 3,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                    //Duration
                    const SizedBox(
                      height: 51,
                    ),
                    AutoSizeText(
                      'Duration & Starting Date',
                      maxLines: 1,
                      stepGranularity: 3,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      width: 344,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 31,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/svgs/🦆 icon _calendar_.svg'),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            '4 Months ( June, July, August, September )',
                            maxLines: 2,
                            stepGranularity: 3,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        )
                      ],
                    ),
                    // Price
                    const SizedBox(
                      height: 51,
                    ),
                    Text(
                      'Price',
                      style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      width: 69,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 31,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('images/svgs/🦆 icon _dollar_.svg'),
                        const SizedBox(
                          width: 12,
                        ),
                        AutoSizeText(
                          '25,000 MMK',
                          stepGranularity: 3,
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

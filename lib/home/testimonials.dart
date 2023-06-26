import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ynclasshouse/home/controller.dart';

final List<String> strs = [str1, str2];
final List<String> imgs = ['images/pngs/exp1.png', 'images/pngs/exp2.png'];
final List<String> names = ['U Yan Naing Soe', 'U Kyaw Htay'];

class Testimonials extends StatelessWidget {
  final bool isMobile;
  const Testimonials({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    final size = context.watch<Controller>().size;
    return SizedBox(
      height: 658,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 51,
          ),
          Padding(
            padding: isMobile
                ? const EdgeInsets.only(left: 21)
                : const EdgeInsets.only(left: 51),
            child: const Text(
              'TESTIMONIALS',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xFF17594A),
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 51,
          ),
          SizedBox(
            height: 519,
            child: ListView.separated(
              padding: isMobile
                  ? const EdgeInsets.symmetric(horizontal: 21)
                  : const EdgeInsets.symmetric(horizontal: 51),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (b, i) => Container(
                color: Colors.white.withOpacity(0.67),
                padding: const EdgeInsets.all(51),
                width: 721,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      imgs[i],
                      height: 90,
                      width: 90,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        AutoSizeText(
                          strs[i],
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.5,
                            letterSpacing: 0.18,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        SizedBox(
                          height: 32,
                          width: 450,
                          child: AutoSizeText(
                            names[i],
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.18,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 12,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

const str1 = '''
“Enrolling my child in YN Classhouse's language classes
was one of the best decisions I've made.
The progress my child has made in English is remarkable.
The Teacher  have a genuine passion for teaching and
creates a warm and inclusive learning environment.
The curriculum is well-structured and tailored to
meet each child's needs. My child not only has developed
language skills but also gained cultural insights
and an appreciation for the language.
I am grateful to YN Classhouse for their
dedication and highly recommend their classes to
any parent seeking a quality language learning program.”
''';

const str2 = '''
"My child has been attending YN Classhouse's language
classes for several months now, and I am thrilled withthe
progress they have made. The Instructors creates
a nurturing and interactive environment where children feel
motivated to learn. Through engaging activities and
personalized attention, my child has developed a strong
foundation in English while gaining a genuine love for the
language. I highly recommend YN Classhouse's classes to
any parent looking to provide their child with a fun and
effective language learning experience."
''';

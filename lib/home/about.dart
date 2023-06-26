import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSection extends StatelessWidget {
  final bool isMobile;
  const AboutSection({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 51),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'ABOUT',
              style: TextStyle(
                color: Color(0xFF17594A),
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            Container(
              width: double.infinity,
              padding: isMobile
                  ? const EdgeInsets.all(21)
                  : const EdgeInsets.all(51),
              color: Colors.white.withOpacity(0.67),
              child: AutoSizeText(
                about,
                stepGranularity: 3,
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: isMobile ? 12 : 24,
                  height: 1.5,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ));
  }
}

const about = '''
Welcome to my language learning classes for children! I'm Yan Naing Soe, an
experienced language teacher specializing in English instruction. 

I offer engaging and immersive classes right from the comfort of my home.
With a passion for nurturing a love of languages in young learners, I create a
positive and supportive environment where children can flourish academically
and personally. 

My classes are designed to make language learning fun and interactive. In my
English classes, children acquire essential vocabulary, grammar, and
pronunciation skills through games, songs, and multimedia resources. 

Each child learns differently, so I tailor my teaching methods to accommodate
individual needs. By incorporating various techniques, such as visual aids and
kinesthetic activities, I ensure that children are actively engaged in their
language acquisition journey. 

Join my language learning classes to embark on an exciting linguistic
adventure. Together, we'll build a strong foundation while fostering a lifelong
love for the English language. 

Let's begin your child's language learning journey in my welcoming home
environment.
''';

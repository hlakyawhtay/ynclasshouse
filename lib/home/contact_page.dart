import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 51),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 51,
            ),
            const Text(
              'CONTACT US',
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
              padding: const EdgeInsets.all(51),
              color: Colors.white.withOpacity(0.67),
              child: AutoSizeText(
                about,
                maxLines: 4,
                stepGranularity: 4,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 24,
                  height: 1.8,
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
We're thrilled that you're interested in our ‘YNClasshouse’  for children! If you
have any questions, suggestions, or concerns, please feel free to reach out to
us. We are here to assist you and ensure the best learning experience for your
child.
''';

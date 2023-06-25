import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ynclasshouse/consts/colors.dart';
import 'package:ynclasshouse/home/academices.dart';
import 'package:ynclasshouse/home/contact_page.dart';
import 'package:ynclasshouse/home/controller.dart';
import 'package:ynclasshouse/home/divider_widget.dart';
import 'package:ynclasshouse/home/dot_widget.dart';
import 'package:ynclasshouse/home/testimonials.dart';
import 'package:ynclasshouse/home/underline_textbtn.dart';

import 'about.dart';
import 'footer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool isMobile = false;
  bool isTablet = false;
  bool isDesktop = false;
  int pos = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<Controller>().initSize(context);
    });
    _scrollController.addListener(() {
      pos = _scrollController.position.pixels.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile layout
          isMobile = true;
          isTablet = false;
          isDesktop = false;
        } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 950) {
          // Tablet layout
          isMobile = false;
          isTablet = true;
          isDesktop = false;
        } else {
          // Desktop layout
          isMobile = false;
          isTablet = false;
          isDesktop = true;
        }

        return SafeArea(
          child: Scaffold(
              backgroundColor: const Color(0xFFFFF1E5),
              appBar: AppBar(
                title: Container(
                  color: kPromaryColor,
                  height: 177,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 22, left: 52),
                                    child: Text(
                                      'YN CLASSHOUSE',
                                      textScaleFactor: 1,
                                      style: isMobile
                                          ? Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                          : Theme.of(context)
                                              .textTheme
                                              .titleLarge,
                                    ),
                                  ),
                                ),
                              ),
                              if (isTablet) ...{
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    buildAppBarAction(),
                                    const SizedBox(
                                      height: 13,
                                    )
                                  ],
                                ))
                              }
                            ],
                          ),
                        ),
                      ),
                      if (isMobile)
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                      if (isDesktop) ...{
                        Align(
                          alignment: Alignment.bottomRight,
                          child: buildAppBarAction(),
                        )
                      }
                    ],
                  ),
                ),
              ),
              body: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                controller: _scrollController,
                children: [
                  // Your content sections
                  HomeSection(
                    isDesktop: isDesktop,
                    isMobile: isMobile,
                    isTablet: isTablet,
                    pos: pos,
                  ),
                  const DividerWidget(),
                  const Academices(),
                  const DividerWidget(),
                  const Testimonials(),
                  const DotWidget(pageCount: 3),
                  const DividerWidget(),
                  const AboutSection(),
                  const DotWidget(pageCount: 4),
                  const DividerWidget(),
                  const ContactUsPage(),
                  const DotWidget(pageCount: 5),
                  const FooterPage(),
                ],
              )),
        );
      },
    );
  }

  void _scrollToSection(double offset) {
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  Widget buildAppBarAction() => Container(
        height: 52,
        margin: const EdgeInsets.only(right: 52),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            UnderlinedTextButton(
              item: Item("HOME", pos <= 602, () {
                _scrollToSection(0);
              }),
            ),
            UnderlinedTextButton(
              item: Item("ACADEMICS", pos > 628 && pos <= 2100, () {
                _scrollToSection(632);
              }),
            ),
            UnderlinedTextButton(
              item: Item("TESTIMONIALS", pos > 2100 && pos <= 2675, () {
                _scrollToSection(2100);
              }),
            ),
            UnderlinedTextButton(
              item: Item("ABOUT", pos > 2675 && pos <= 3400, () {
                _scrollToSection(4045);
              }),
            ),
            UnderlinedTextButton(
              item: Item("CONTACT US", pos > 3400 && pos <= 4834, () {
                _scrollToSection(3400);
              }),
            ),
          ],
        ),
      );
}

class HomeSection extends StatelessWidget {
  final bool isMobile;
  final bool isTablet;
  final bool isDesktop;
  final int pos;
  const HomeSection(
      {super.key,
      required this.isMobile,
      required this.isTablet,
      required this.isDesktop,
      required this.pos});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 622,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 622,
                color: const Color(0xFFFFF1E5),
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: AutoSizeText(
                          'Welcome to \n YN Classhouse',
                          maxFontSize: 96,
                          maxLines: 2,
                          stepGranularity: 4,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w300,
                              fontSize: 96,
                              color: kPromaryColor),
                        ),
                      ),
                    ),
                    SvgPicture.asset('images/svgs/bg_dots.svg')
                  ],
                ),
              ),
            ],
          ),
          const Align(
              alignment: Alignment.bottomLeft, child: DotWidget(pageCount: 1))
        ],
      ),
    );
  }
}

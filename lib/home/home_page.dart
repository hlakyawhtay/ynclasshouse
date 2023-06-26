import 'dart:developer';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      log("POS : -> $pos");
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
          isMobile = true;
          isTablet = false;
          isDesktop = false;
        } else if (constraints.maxWidth >= 601 && constraints.maxWidth < 950) {
          isMobile = false;
          isTablet = true;
          isDesktop = false;
        } else {
          isMobile = false;
          isTablet = false;
          isDesktop = true;
        }

        return SafeArea(
          child: Scaffold(
              key: _scaffoldKey,
              backgroundColor: const Color(0xFFFFF1E5),
              drawer: isMobile
                  ? Drawer(
                      backgroundColor: kPromaryColor,
                      child: buildDrawer(),
                    )
                  : null,
              appBar: AppBar(
                toolbarHeight: isMobile ? 68 : 177,
                title: Container(
                  color: kPromaryColor,
                  height: isMobile ? 68 : 177,
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
                                    padding: EdgeInsets.only(
                                        left: isMobile ? 0 : 52, bottom: 15),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  HomeSection(
                    isDesktop: isDesktop,
                    isMobile: isMobile,
                    isTablet: isTablet,
                  ),
                   DotWidget(pageCount: 1,isMobile: isMobile,),
                  const DividerWidget(),
                  Academices(
                    isMobile: isMobile,
                  ),
                   DotWidget(pageCount: 2,isMobile: isMobile,),
                  const DividerWidget(),
                  Testimonials(
                    isMobile: isMobile,
                  ),
                   DotWidget(pageCount: 3,isMobile: isMobile,),
                  const DividerWidget(),
                  AboutSection(
                    isMobile: isMobile,
                  ),
                   DotWidget(pageCount: 4,isMobile: isMobile,),
                  const DividerWidget(),
                  ContactUsPage(
                    isMobile: isMobile,
                  ),
                   DotWidget(pageCount: 5,isMobile: isMobile,),
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
              item: Item("ACADEMICS", pos > 628 && pos <= 2239, () {
                _scrollToSection(650);
              }),
            ),
            UnderlinedTextButton(
              item: Item("TESTIMONIALS", pos > 2239 && pos <= 3038, () {
                _scrollToSection(2240);
              }),
            ),
            if (isDesktop) ...{
              UnderlinedTextButton(
                item: Item("ABOUT", pos > 3038 && pos < 4292, () {
                  _scrollToSection(3038);
                }),
              )
            },
            if (isTablet) ...{
              UnderlinedTextButton(
                item: Item("ABOUT", pos > 3038 && pos < 4805, () {
                  _scrollToSection(3038);
                }),
              )
            },
            if (isDesktop) ...{
              UnderlinedTextButton(
                item: Item("CONTACT US", pos > 4292, () {
                  _scrollToSection(4292);
                }),
              ),
            },
            if (isTablet) ...{
              UnderlinedTextButton(
                item: Item("CONTACT US", pos > 4805, () {
                  _scrollToSection(4805);
                }),
              ),
            },
            if (isMobile) ...{
              UnderlinedTextButton(
                item: Item("CONTACT US", pos > 5775, () {
                  _scrollToSection(5775);
                }),
              ),
            }
          ],
        ),
      );

  Widget buildDrawer() => Container(
        height: 52,
        margin: const EdgeInsets.only(right: 52),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 56,
            ),
            UnderlinedTextButton(
              item: Item("HOME", pos <= 602, () {
                _scrollToSection(0);
                _scaffoldKey.currentState?.openEndDrawer();
              }),
            ),
            const SizedBox(
              height: 12,
            ),
            UnderlinedTextButton(
              item: Item("ACADEMICS", pos > 628 && pos <= 2239, () {
                _scrollToSection(650);
                _scaffoldKey.currentState?.openEndDrawer();
              }),
            ),
            const SizedBox(
              height: 12,
            ),
            UnderlinedTextButton(
              item: Item("TESTIMONIALS", pos > 2239 && pos <= 3038, () {
                _scrollToSection(2240);
                _scaffoldKey.currentState?.openEndDrawer();
              }),
            ),
            const SizedBox(
              height: 12,
            ),
            UnderlinedTextButton(
              item: Item("ABOUT", pos > 3038 && pos < 4805, () {
                _scrollToSection(3038);
                _scaffoldKey.currentState?.openEndDrawer();
              }),
            ),
            const SizedBox(
              height: 12,
            ),
            UnderlinedTextButton(
              item: Item("CONTACT US", pos > 5775, () {
                _scrollToSection(5775);
                _scaffoldKey.currentState?.openEndDrawer();
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

  const HomeSection({
    super.key,
    required this.isMobile,
    required this.isTablet,
    required this.isDesktop,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 500,
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
        ],
      ),
    );
  }
}

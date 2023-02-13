import 'package:atweb/providers/page_view_provider.dart';
import 'package:atweb/screens/about_page.dart/about_page.dart';
import 'package:atweb/screens/home_page/home_page.dart';
import 'package:atweb/screens/service_page.dart/service_page.dart';
import 'package:atweb/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(
        initialPage: context.watch<PageViewProvider>().currentPage);
    return Scaffold(
        backgroundColor: const Color(0xff020714),
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 150),
          child: TekAppBar(),
        ),
        body: PageView(
          controller: _pageController,
          pageSnapping: true,
          scrollDirection: Axis.vertical,
          children: const [
            HomePage(),
            ServicePage(),
            AboutPage(),
          ],
        ));
  }
  // Scaffold(
  //   backgroundColor: const Color(0xff020714),
  //   appBar: PreferredSize(
  //       preferredSize: const Size(double.infinity, 150), child: TekAppBar()),
  //   body:
  // );
}

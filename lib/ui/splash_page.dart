import 'package:flutter/material.dart';
import 'package:second_decdart/ui/pdf_viewer_page.dart';
import 'package:second_decdart/utils/color_constant.dart';
import 'package:second_decdart/utils/string_constant.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PDFViewerCachedFromURL()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorConstant.primaryColor,
      body: Center(
        child: Text(
            StringConstant.pdfViewer,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500,color: ColorConstant.secondaryColor),
        ),
      ),
    );
  }
}

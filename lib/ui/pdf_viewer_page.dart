
// Create view for pdf
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:second_decdart/utils/assets_constant.dart';
import 'package:second_decdart/utils/color_constant.dart';
import 'package:second_decdart/utils/string_constant.dart';

class PDFViewerCachedFromURL extends StatefulWidget {


  @override
  State<PDFViewerCachedFromURL> createState() => _PDFViewerCachedFromURLState();
}

class _PDFViewerCachedFromURLState extends State<PDFViewerCachedFromURL> {

  String url='https://drive.google.com/file/d/1WU6gcK4IuK9Q76ZN34KdZOc1Il8FdvoJ/view';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.primaryColor,
        title: Text(
          StringConstant.homeTitle,
          style: TextStyle(color: ColorConstant.secondaryColor),
        ),
      ),
      body: PDF().fromAsset(AssetsConstant.resumePath,
      loadingWidget: (){
        return CircularProgressIndicator(
          color: ColorConstant.primaryColor,
        );
      },
      errorWidget: (err){
        return Center(
          child: Text("${StringConstant.errorMsg} $err"),
        );
      }
      )
    );
  }
}

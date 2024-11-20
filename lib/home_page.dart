import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "FLutter cache PDF Viewer",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => PDFViewerCachedFromURL(
                          url: 'https://www.ucd.ie/t4cms/Test%20PDF-8mb.pdf')));
            },
            child: Container(
              height: 60,
              width: 380,
               color: Colors.red,
              child: Center(
                child: Text(
                  'Cached PDF from Url',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Create view for pdf
class PDFViewerCachedFromURL extends StatelessWidget {
  const PDFViewerCachedFromURL({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Catched PDF from url',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: PDF().cachedFromUrl(url,
          placeholder: (double progress) => Center(
                child: Text('$progress %'),
              ),
          errorWidget: (dynamic error) => Center(
                child: Text('error.toString()'),
              )),
    );
  }
}

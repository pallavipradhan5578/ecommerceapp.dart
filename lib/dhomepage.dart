import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class DHomePage extends StatefulWidget {
  const DHomePage({super.key});

  @override
  State<DHomePage> createState() => _DHomePageState();
}

class _DHomePageState extends State<DHomePage> {
  @override
  void initState() {
    super.initState();

    // Navigate to PDF Viewer automatically after the page is loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PDFViewerCachedFromURL(
            url: 'https://www.ucd.ie/t4cms/Test%20PDF.pdf',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Flutter Cache PDF Viewer",
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
                    url: 'https://www.ucd.ie/t4cms/Test%20PDF.pdf',
                  ),
                ),
              );
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
          'Cached PDF from URL',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: PDF().cachedFromUrl(url,
          placeholder: (double progress) => Center(
            child: Text('$progress %'),
          ),
          errorWidget: (dynamic error) => Center(
            child: Text('Error: $error'),
          )),
    );
  }
}

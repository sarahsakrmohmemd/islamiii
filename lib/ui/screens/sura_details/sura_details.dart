import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../model/sura_details_args.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styels.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura_details";

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String suraContent = "";  // Variable to hold sura content

  @override
  Widget build(BuildContext context) {
    // Get the data passed to the screen
    SuraDetailsArgs args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;

    // Load the content based on the filename
    _loadSuraContent(args.fileName);

    return Scaffold(
      appBar: AppBar(
        title: Text(args.suraName),  // Display sura name in the AppBar
      ),
      body: suraContent.isEmpty
          ? const Center(child: CircularProgressIndicator()) // Show loader while content loads
          : SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            suraContent,
            textDirection: TextDirection.rtl,
            style: AppStyles.semiBoldAccent,
          ),
        ),
      ),
    );
  }

  // Function to load sura content from the file
  Future<void> _loadSuraContent(String fileName) async {
    try {
      // Load the content from the file (Make sure the file exists)
      String content = await rootBundle.loadString('assets/suras/$fileName.txt'); // Ensure file exists
      setState(() {
        suraContent = content;
      });
    } catch (e) {
      // If there's an error loading the content
      setState(() {
        suraContent = "Error loading sura, please try again.";
      });
    }
  }
}

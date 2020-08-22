import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultLayout extends StatefulWidget {

  final String title,description,imageLink;
  final Color color;

  const DefaultLayout({this.title, this.description, this.imageLink, this.color});
  @override
  _DefaultLayoutState createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.all(Radius.circular(20.0),),
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Since we used SafeArea we need to provide it full width of the app so that it stretches full screen.
            Container(
              width: double.infinity,
            ),
            Flexible(
              child: SizedBox(
                height: 30.0,
              ),
            ),
            //Title of the Screen
            Container(
              width: MediaQuery.of(context).size.width,
              child: Text(widget.title,
                textAlign: TextAlign.center,
                style: GoogleFonts.fredokaOne(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            //Flexiable sized box so that it does not overflow.
            Flexible(
              child: SizedBox(
                height: 40.0,
              ),
            ),
            //Image
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.imageLink),
              ),
              height: MediaQuery.of(context).size.width-80,
              width: MediaQuery.of(context).size.width-80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 10.0,
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 40.0,
              ),
            ),
            //Description
            Container(
              width: 300.0,
              child: Text('''${widget.description}''',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}

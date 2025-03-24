import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({super.key, required this.webScreenLayout, required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {

    // Layout builder is used to get the size of the screen so that we can form reponsive layouts
    
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          // Web screen
          return webScreenLayout;
          
        }
        // Mobile screen
        else {
          return mobileScreenLayout;
        }
      },
    );
  }
}

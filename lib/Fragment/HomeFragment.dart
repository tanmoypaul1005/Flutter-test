import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("This is Home Page"),
      ),
    );
  }
}

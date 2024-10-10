import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  static final routeName = '/onboarding';

  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: const Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('assets/images/img.jpg'),
            fit: BoxFit.fitHeight,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Level up your style',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

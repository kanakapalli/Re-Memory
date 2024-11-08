import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/view/person/tabBodyParallex.dart';

class PersonView extends StatefulWidget {

  const PersonView({Key? key, }) : super(key: key);

  @override
  _PersonViewState createState() => _PersonViewState();
}

class _PersonViewState extends State<PersonView> {
  PageController _pageController = PageController();
  final List<String?> persons = ['assets/paraxellsky/personstandingex.png',null] ;


  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView.builder(
        controller: _pageController,
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return TabBodyWidgetParallax(
            PersonImage: persons[index],
          );
        },
      ),
    );
  }
}

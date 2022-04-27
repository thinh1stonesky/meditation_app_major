
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final oriantation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child:  oriantation == Orientation.portrait ?
        Stack(
          children: const [
            getStartedBody(),
            getStartedHeader(),]
      ) :
      Row(
        children: const [
          Expanded(child: getStartedHeader(),),
          Expanded(child: getStartedBody(),)


        ],
    )
        ),
    );
  }
}

class getStartedBody extends StatelessWidget {
  const getStartedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: 0.6,
        widthFactor: 1,
        child: FittedBox(
          fit: BoxFit.cover,
          child: SvgPicture.network(getstartedBackgound),
        ),
      ),
    );
  }
}

class getStartedHeader extends StatelessWidget {
  const getStartedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.4,
      child: Column(
        children: [
          Expanded(child: SvgPicture.network(getstartedLogo,
          alignment: Alignment(0.0 , 0.2),),),
          Expanded(
            child: Column(
              children: [
                Text("Hello!"),
                Text("data")
              ],
            ),
          )
          
        ],
      ),
    );
  }
}



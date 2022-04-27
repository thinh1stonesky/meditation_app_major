
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
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: FractionallySizedBox(
            //     heightFactor: 0.6,
            //     widthFactor: 1,
            //     child: FittedBox(
            //       alignment: Alignment.topCenter,
            //       fit: BoxFit.cover,
            //       child: SvgPicture.network(getstartedBackgound,
            //       ),
            //     ),
            //   ),
            // ),
            GetStartedBody(),
            FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.4,
                child: GetStartedHeader()
            )
                ,]
      ) :
      Row(
        children: const [
          Expanded(

            child: FractionallySizedBox(
              heightFactor: 0.8,
              alignment: Alignment.topCenter,
              child: GetStartedHeader(),
            ),
          ),
          Expanded(child: GetStartedBody(),)


        ],
    )
        ),
    );
  }
}



class GetStartedBody extends StatelessWidget {

  const GetStartedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        heightFactor: orientation == Orientation.portrait ?  0.6 : 0.9,
        widthFactor: 1,
        child: FittedBox(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          child: SvgPicture.network(getstartedBackgound),
        ),
      ),
    );
  }
}
class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Flexible(child: SvgPicture.network(getstartedLogo,
            alignment: const Alignment(0.0, -0.8),
          ),
          flex: 2,
          fit: FlexFit.tight,),
          Flexible(
            child: FittedBox(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Hi Afsar, Welcome\n',
                    style: PrimaryFont.medium(30).copyWith(
                        color: kColorLightYellow),
                    children: [
                      TextSpan(
                        text: 'to Silent Moon',
                        style: PrimaryFont.thin(30).copyWith(
                          color: kColorLightYellow,
                          fontWeight: FontWeight.w100,
                        ),
                      )

                    ]
                ),
              ),
            ),
            flex: 1,
            fit: FlexFit.tight,
          ),
          Flexible(
            child: SizedBox.expand(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: FittedBox(
                  alignment: Alignment.center,
                  child: Text('Explore the app, Find some peace of mind\nto prepare for meditation.',
                    style: PrimaryFont.light(16).copyWith(
                      color: kColorLightGrey,
                      height: 1.2
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            flex: 1,
            fit: FlexFit.tight,
          )

        ],
      );
  }
}






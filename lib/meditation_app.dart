
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
            GetStartedBody(),
            FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.3,
                child: GetStartedHeader()
            )
                ,]
      ) :
      Row(
        children: const [
          Expanded(child: GetStartedHeader(),),
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
class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(child: SvgPicture.network(getstartedLogo,
          ),),
          Expanded(
            child: Column(
              children: [
                Text('Hi Afsar, Welcome\n',
                  style: PrimaryFont.medium(30).copyWith(
                    color: kColorLightYellow
                  ),
                ),
                Text('to Silent Moon',
                  style: PrimaryFont.thin(30).copyWith(
                      color: kColorLightYellow,
                    fontWeight: FontWeight.w100
                  ),
                ),
                Text('Explore the app, Find some peace of mind\nto prepare for meditation.',
                  style: PrimaryFont.light(16).copyWith(
                      color: kColorLightGrey
                  ),
                ),

              ],
            ),
          )

        ],
      );
  }
}






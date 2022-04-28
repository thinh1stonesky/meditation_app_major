

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/themes.dart';




class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final oriantation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child:  oriantation == Orientation.portrait ?
        Stack(
          children: [
            const GetStartedBody(),
            const FractionallySizedBox(
                widthFactor: 1,
                heightFactor: 0.4,
                child: GetStartedHeader()
            ),
            Align(
              alignment: const Alignment(0.0, 0.8),
              child:  GetStartedButton(
                fixedSize: MaterialStateProperty.all(
                    Size(
                        size.width * 0.8,
                        size.height * 0.065),
                ),
              textStyle: MaterialStateProperty.all(
                PrimaryFont.medium(size.height * 0.015)
              ),)

            ),
            Align(
              alignment: Alignment(0.0, 0.95),
              child: Container(
                height: size.height * 0.0030,
                width: size.width * 0.5,
                decoration: const BoxDecoration(
                    color: kColorLightGrey,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
              ),
            )
          ]
      ) :
      Row(
        children: [
          const Expanded(

            child: FractionallySizedBox(
              heightFactor: 0.8,
              alignment: Alignment.topCenter,
              child: GetStartedHeader(),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                const GetStartedBody(),
                Align(
                    alignment: const Alignment(0.0, 0.9 ),
                    child:  GetStartedButton(
                      fixedSize: MaterialStateProperty.all(
                        Size(
                            size.width * 0.4,
                            size.height * 0.065),
                      ),
                      textStyle: MaterialStateProperty.all(
                          PrimaryFont.medium(size.height * 0.015)
                      ),)

                )

              ],
            ),)


        ],
    )
        ),
    );
  }
}

class GetStartedButton extends StatelessWidget {
   const GetStartedButton({Key? key, this.fixedSize, this.textStyle}) : super(key: key);

  final MaterialStateProperty<Size>? fixedSize;
  final MaterialStateProperty<TextStyle>? textStyle;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(kColorLightGrey),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
            ),
            foregroundColor: MaterialStateProperty.all(kColorDarkGrey),
            fixedSize: fixedSize,
            textStyle: textStyle,

        ),
        onPressed: () {

        },
        child: const Text("GET STARTED",));
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
        heightFactor: orientation == Orientation.portrait ?  0.6 : 0.8,
        widthFactor: 1,
        child: FittedBox(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          child: SvgPicture.network(getstartedBackgound),
          clipBehavior: Clip.antiAlias,
        ),
      ),
    );
  }
}
class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Column(
        children: [
          Flexible(child: SvgPicture.network(getstartedLogo,
            alignment: const Alignment(0.0, -0.8),
          ),
          flex: orientation == Orientation.portrait ? 2 : 1,
          fit: FlexFit.tight,),
          Flexible(
            child: FractionallySizedBox(
              widthFactor: 0.9,
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






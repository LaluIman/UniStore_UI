import 'package:e_commerce/screens/profile_screen/components/profile_button_selection.dart';
import 'package:e_commerce/screens/profile_screen/components/profile_picture.dart';
import 'package:e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();

  
}



class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    Provider.of<AuthProvider>(context, listen: false).loadEmail();
  }
  @override
  Widget build(BuildContext context) {
    String? email = Provider.of<AuthProvider>(context).email;

    return SingleChildScrollView(
      child: Column(
        children: [
          ProfilePicture(),

           SizedBox(
            height: getPropScreenHeight(10),
          ),
          

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(email ?? "No Email", style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              )),
              SizedBox(width: 5),
              Icon(Icons.edit, size: 15),
            ],
          ),

          SizedBox(
            height: getPropScreenHeight(35),
          ),
          ProfileButtonSelection(
            svgIcon: "assets/icons/Account.svg",
            title: "My account",
            press: () {},
          ),
          ProfileButtonSelection(
            svgIcon: "assets/icons/Notifications.svg",
            title: "Notifications",
            press: () {},
          ),
          ProfileButtonSelection(
            svgIcon: "assets/icons/Settings.svg",
            title: "Settings",
            press: () {},
          ),
          ProfileButtonSelection(
            svgIcon: "assets/icons/Question mark.svg",
            title: "Help center",
            press: () {},
          ),

          SizedBox(height: 20,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
            child: Divider(),
          ),

          SizedBox(height: 20,),


          LogOutButton()
        ],
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamedAndRemoveUntil(context, SignInScreen.routeName, (Route<dynamic> routes) => false);
      },
      child: Container(
         margin: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(20),
          vertical: getPropScreenHeight(5)),
        padding: EdgeInsets.all(getPropScreenWidth(15)),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Log out.svg", color: Colors.white,),
            SizedBox(width: getPropScreenWidth(10),),
            Text("Log out", style: TextStyle(
              fontSize: getPropScreenWidth(15),
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}

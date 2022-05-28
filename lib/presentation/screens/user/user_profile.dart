import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/login_request.dart';
import 'package:magdsoft_flutter_structure/data/network/responses/login_response.dart';
import 'package:magdsoft_flutter_structure/presentation/styles/colors.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/default_button.dart';

class userData extends StatelessWidget {
  LoginResponse? loginResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data', style: TextStyle(fontSize: 30)),
        backgroundColor: AppColor.DarkBlue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Padding(
          padding: const EdgeInsets.only(left:20,top:20),
          child: Column(
            children: [
              Row(children: [
                Text('Name:', style: TextStyle(fontSize:20),),
                SizedBox(width:10),
                Text('', style: TextStyle(fontSize:20),),
              ],),
              Row(children: [
                Text('Email:', style: TextStyle(fontSize:20),),
                SizedBox(width:10),
                Text('', style: TextStyle(fontSize:20),),
              ],),
              Row(children: [
                Text('Phone:', style: TextStyle(fontSize:20),),
                SizedBox(width:10),
                Text('', style: TextStyle(fontSize:20),),
              ],),
              
              Spacer(),
              DefaultAppButton(
                  text: 'Logout',
                  backGround: Color.fromARGB(255, 168, 11, 0),
                  fontSize: 20,
                  height: 50,
                  onTap: () => Navigator.of(context)
                                                            .pushReplacementNamed('/'),
                  width: 150,
                  textColor: AppColor.white)
            ],
          ),
        ),
      ),
    );
  }
}

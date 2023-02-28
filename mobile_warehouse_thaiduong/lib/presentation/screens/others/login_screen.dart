import 'package:flutter/material.dart';
import 'package:mobile_warehouse_thaiduong/constant.dart';
import 'package:mobile_warehouse_thaiduong/function.dart';
import 'package:mobile_warehouse_thaiduong/presentation/screens/others/main_screen.dart';
import 'package:mobile_warehouse_thaiduong/presentation/widgets/button_widget.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final bool _showPass = true;
  final bool _isUsernameErr = false;
  final bool _isPasswordErr = false;

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60 * SizeConfig.ratioHeight,
          backgroundColor: Constants.mainColor,
          title: Text(
            'Đăng nhập',
            style: TextStyle(fontSize: 22 * SizeConfig.ratioFont),
          ),
          leading: IconButton(
            icon: const Icon(Icons.west_outlined),
            iconSize: 25 * SizeConfig.ratioRadius,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu),
                iconSize: 25 * SizeConfig.ratioRadius,
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
          ],
        ),
       // endDrawer: DrawerUser(),
        body: SingleChildScrollView(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                SizedBox(
                  height: 40 * SizeConfig.ratioHeight,
                ),
                      
               
                SizedBox(
                  width: 300 * SizeConfig.ratioWidth,
                  child: TextField(
                    controller: userController,
                    maxLength: 20,
                    style: TextStyle(
                        fontSize: 25 * SizeConfig.ratioFont, color: Colors.black),
                    decoration: InputDecoration(
                        labelText: "Tên đăng nhập",
                        labelStyle: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20 * SizeConfig.ratioFont,
                        ),
                        errorText: _isUsernameErr
                            ? "Tên đăng nhập phải dài hơn " "${Constants.minLengthUserName} ký tự"
                            : null,
                        errorStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 15 * SizeConfig.ratioFont)),
                    onChanged: (text) {
                    
                    },
                  ),
                ),
                SizedBox(height: 5 * SizeConfig.ratioHeight),
                SizedBox(
                  width: 300 * SizeConfig.ratioWidth,
                  child:
                      Stack(alignment: AlignmentDirectional.centerEnd, children: [
                    TextField(
                      obscureText: _showPass,
                      controller: passController,
                      maxLength: 20,
                      style: TextStyle(
                          fontSize: 25 * SizeConfig.ratioFont,
                          color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.red,
                          labelText: "Mật khẩu",
                          labelStyle: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20 * SizeConfig.ratioFont,
                          ),
                          errorText: _isPasswordErr
                              ? "Mật khẩu phải dài hơn " "${Constants.minLengthPassWord} ký tự"
                              : null,
                          errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15 * SizeConfig.ratioFont)),
                      onChanged: (_) {
                        //Yêu cầu Bloc check dữ liệu username và password
                     
                      },
                    ),
                    IconButton(
                        onPressed: () {
                         
                        },
                        icon: Icon(
                          _showPass ? Icons.visibility : Icons.visibility_off,
                          color: Constants.mainColor,
                        ))
                  ]),
                ),
                SizedBox(
                  height: 40 * SizeConfig.ratioHeight,
                ),
                CustomizedButton(
                  text: "Đăng nhập",
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainScreen()),
                    );
                  },
                )
               
              ]),
            )));
  }
}